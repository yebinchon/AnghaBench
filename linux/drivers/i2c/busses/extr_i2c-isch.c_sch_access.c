
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPROTO ;

 int I2C_SMBUS_BLOCK_MAX ;




 char I2C_SMBUS_WRITE ;



 int SCH_QUICK ;

 int SMBBLKDAT ;
 char* SMBHSTADD ;
 int SMBHSTCLK ;
 char* SMBHSTCMD ;
 char* SMBHSTCNT ;
 char* SMBHSTDAT0 ;
 char* SMBHSTDAT1 ;
 char* SMBHSTSTS ;
 int backbone_speed ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_notice (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int inb (char*) ;
 int inw (int ) ;
 int outb (int,char*) ;
 int outw (int,int ) ;
 TYPE_1__ sch_adapter ;
 int sch_transaction () ;

__attribute__((used)) static s32 sch_access(struct i2c_adapter *adap, u16 addr,
   unsigned short flags, char read_write,
   u8 command, int size, union i2c_smbus_data *data)
{
 int i, len, temp, rc;


 temp = inb(SMBHSTSTS) & 0x0f;
 if (temp & 0x08) {
  dev_dbg(&sch_adapter.dev, "SMBus busy (%02x)\n", temp);
  return -EAGAIN;
 }
 temp = inw(SMBHSTCLK);
 if (!temp) {






  dev_notice(&sch_adapter.dev,
   "Clock divider uninitialized. Setting defaults\n");
  outw(backbone_speed / (4 * 100), SMBHSTCLK);
 }

 dev_dbg(&sch_adapter.dev, "access size: %d %s\n", size,
  (read_write)?"READ":"WRITE");
 switch (size) {
 case 133:
  outb((addr << 1) | read_write, SMBHSTADD);
  size = SCH_QUICK;
  break;
 case 135:
  outb((addr << 1) | read_write, SMBHSTADD);
  if (read_write == I2C_SMBUS_WRITE)
   outb(command, SMBHSTCMD);
  size = 130;
  break;
 case 134:
  outb((addr << 1) | read_write, SMBHSTADD);
  outb(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE)
   outb(data->byte, SMBHSTDAT0);
  size = 129;
  break;
 case 132:
  outb((addr << 1) | read_write, SMBHSTADD);
  outb(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   outb(data->word & 0xff, SMBHSTDAT0);
   outb((data->word & 0xff00) >> 8, SMBHSTDAT1);
  }
  size = 128;
  break;
 case 136:
  outb((addr << 1) | read_write, SMBHSTADD);
  outb(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
    return -EINVAL;
   outb(len, SMBHSTDAT0);
   for (i = 1; i <= len; i++)
    outb(data->block[i], SMBBLKDAT+i-1);
  }
  size = 131;
  break;
 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }
 dev_dbg(&sch_adapter.dev, "write size %d to 0x%04x\n", size, SMBHSTCNT);
 outb((inb(SMBHSTCNT) & 0xb0) | (size & 0x7), SMBHSTCNT);

 rc = sch_transaction();
 if (rc)
  return rc;

 if ((read_write == I2C_SMBUS_WRITE) || (size == SCH_QUICK))
  return 0;

 switch (size) {
 case 130:
 case 129:
  data->byte = inb(SMBHSTDAT0);
  break;
 case 128:
  data->word = inb(SMBHSTDAT0) + (inb(SMBHSTDAT1) << 8);
  break;
 case 131:
  data->block[0] = inb(SMBHSTDAT0);
  if (data->block[0] == 0 || data->block[0] > I2C_SMBUS_BLOCK_MAX)
   return -EPROTO;
  for (i = 1; i <= data->block[0]; i++)
   data->block[i] = inb(SMBBLKDAT+i-1);
  break;
 }
 return 0;
}
