
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_piix4_adapdata {unsigned short smba; } ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int EINVAL ;
 int ENABLE_INT9 ;
 int EOPNOTSUPP ;
 int EPROTO ;

 int I2C_SMBUS_BLOCK_MAX ;




 char I2C_SMBUS_WRITE ;



 int PIIX4_QUICK ;

 int SMBBLKDAT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int dev_warn (int *,char*,int) ;
 struct i2c_piix4_adapdata* i2c_get_adapdata (struct i2c_adapter*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int piix4_transaction (struct i2c_adapter*) ;

__attribute__((used)) static s32 piix4_access(struct i2c_adapter * adap, u16 addr,
   unsigned short flags, char read_write,
   u8 command, int size, union i2c_smbus_data * data)
{
 struct i2c_piix4_adapdata *adapdata = i2c_get_adapdata(adap);
 unsigned short piix4_smba = adapdata->smba;
 int i, len;
 int status;

 switch (size) {
 case 133:
  outb_p((addr << 1) | read_write,
         SMBHSTADD);
  size = PIIX4_QUICK;
  break;
 case 135:
  outb_p((addr << 1) | read_write,
         SMBHSTADD);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMBHSTCMD);
  size = 130;
  break;
 case 134:
  outb_p((addr << 1) | read_write,
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMBHSTDAT0);
  size = 129;
  break;
 case 132:
  outb_p((addr << 1) | read_write,
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMBHSTDAT0);
   outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1);
  }
  size = 128;
  break;
 case 136:
  outb_p((addr << 1) | read_write,
         SMBHSTADD);
  outb_p(command, SMBHSTCMD);
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
    return -EINVAL;
   outb_p(len, SMBHSTDAT0);
   inb_p(SMBHSTCNT);
   for (i = 1; i <= len; i++)
    outb_p(data->block[i], SMBBLKDAT);
  }
  size = 131;
  break;
 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }

 outb_p((size & 0x1C) + (ENABLE_INT9 & 1), SMBHSTCNT);

 status = piix4_transaction(adap);
 if (status)
  return status;

 if ((read_write == I2C_SMBUS_WRITE) || (size == PIIX4_QUICK))
  return 0;


 switch (size) {
 case 130:
 case 129:
  data->byte = inb_p(SMBHSTDAT0);
  break;
 case 128:
  data->word = inb_p(SMBHSTDAT0) + (inb_p(SMBHSTDAT1) << 8);
  break;
 case 131:
  data->block[0] = inb_p(SMBHSTDAT0);
  if (data->block[0] == 0 || data->block[0] > I2C_SMBUS_BLOCK_MAX)
   return -EPROTO;
  inb_p(SMBHSTCNT);
  for (i = 1; i <= data->block[0]; i++)
   data->block[i] = inb_p(SMBBLKDAT);
  break;
 }
 return 0;
}
