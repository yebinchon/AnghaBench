
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int ALI1563_MAX_TIMEOUT ;
 int EOPNOTSUPP ;



 int HST_CNTL2_QUICK ;
 int HST_CNTL2_SIZEMASK ;

 int HST_STS_BUSY ;





 char I2C_SMBUS_WRITE ;
 int SMB_HST_ADD ;
 int SMB_HST_CMD ;
 int SMB_HST_CNTL2 ;
 int SMB_HST_DAT0 ;
 int SMB_HST_DAT1 ;
 int SMB_HST_STS ;
 int ali1563_block (struct i2c_adapter*,union i2c_smbus_data*,char) ;
 int ali1563_transaction (struct i2c_adapter*,int) ;
 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static s32 ali1563_access(struct i2c_adapter *a, u16 addr,
     unsigned short flags, char rw, u8 cmd,
     int size, union i2c_smbus_data *data)
{
 int error = 0;
 int timeout;
 u32 reg;

 for (timeout = ALI1563_MAX_TIMEOUT; timeout; timeout--) {
  reg = inb_p(SMB_HST_STS);
  if (!(reg & HST_STS_BUSY))
   break;
 }
 if (!timeout)
  dev_warn(&a->dev, "SMBus not idle. HST_STS = %02x\n", reg);
 outb_p(0xff, SMB_HST_STS);


 switch (size) {
 case 129:
  size = HST_CNTL2_QUICK;
  break;
 case 131:
  size = 135;
  break;
 case 130:
  size = 134;
  break;
 case 128:
  size = 133;
  break;
 case 132:
  size = 136;
  break;
 default:
  dev_warn(&a->dev, "Unsupported transaction %d\n", size);
  error = -EOPNOTSUPP;
  goto Done;
 }

 outb_p(((addr & 0x7f) << 1) | (rw & 0x01), SMB_HST_ADD);
 outb_p((inb_p(SMB_HST_CNTL2) & ~HST_CNTL2_SIZEMASK) |
        (size << 3), SMB_HST_CNTL2);



 switch (size) {
 case 135:
  if (rw == I2C_SMBUS_WRITE)

   outb_p(cmd, SMB_HST_DAT0);
  break;
 case 134:
  outb_p(cmd, SMB_HST_CMD);
  if (rw == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMB_HST_DAT0);
  break;
 case 133:
  outb_p(cmd, SMB_HST_CMD);
  if (rw == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMB_HST_DAT0);
   outb_p((data->word & 0xff00) >> 8, SMB_HST_DAT1);
  }
  break;
 case 136:
  outb_p(cmd, SMB_HST_CMD);
  error = ali1563_block(a, data, rw);
  goto Done;
 }

 error = ali1563_transaction(a, size);
 if (error)
  goto Done;

 if ((rw == I2C_SMBUS_WRITE) || (size == HST_CNTL2_QUICK))
  goto Done;

 switch (size) {
 case 135:
  data->byte = inb_p(SMB_HST_DAT0);
  break;
 case 134:
  data->byte = inb_p(SMB_HST_DAT0);
  break;
 case 133:
  data->word = inb_p(SMB_HST_DAT0) + (inb_p(SMB_HST_DAT1) << 8);
  break;
 }
Done:
 return error;
}
