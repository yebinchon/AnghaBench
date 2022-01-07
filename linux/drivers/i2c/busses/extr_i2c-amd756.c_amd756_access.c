
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;





 int AMD756_QUICK ;

 int EOPNOTSUPP ;
 int GE_CYC_TYPE_MASK ;





 char I2C_SMBUS_WRITE ;
 int SMB_GLOBAL_ENABLE ;
 int SMB_HOST_ADDRESS ;
 int SMB_HOST_BLOCK_DATA ;
 int SMB_HOST_COMMAND ;
 int SMB_HOST_DATA ;
 int amd756_transaction (struct i2c_adapter*) ;
 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int inw_p (int ) ;
 int outb_p (int,int ) ;
 int outw_p (int,int ) ;

__attribute__((used)) static s32 amd756_access(struct i2c_adapter * adap, u16 addr,
    unsigned short flags, char read_write,
    u8 command, int size, union i2c_smbus_data * data)
{
 int i, len;
 int status;

 switch (size) {
 case 129:
  outw_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMB_HOST_ADDRESS);
  size = AMD756_QUICK;
  break;
 case 131:
  outw_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMB_HOST_ADDRESS);
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMB_HOST_DATA);
  size = 135;
  break;
 case 130:
  outw_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMB_HOST_ADDRESS);
  outb_p(command, SMB_HOST_COMMAND);
  if (read_write == I2C_SMBUS_WRITE)
   outw_p(data->byte, SMB_HOST_DATA);
  size = 134;
  break;
 case 128:
  outw_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMB_HOST_ADDRESS);
  outb_p(command, SMB_HOST_COMMAND);
  if (read_write == I2C_SMBUS_WRITE)
   outw_p(data->word, SMB_HOST_DATA);
  size = 133;
  break;
 case 132:
  outw_p(((addr & 0x7f) << 1) | (read_write & 0x01),
         SMB_HOST_ADDRESS);
  outb_p(command, SMB_HOST_COMMAND);
  if (read_write == I2C_SMBUS_WRITE) {
   len = data->block[0];
   if (len < 0)
    len = 0;
   if (len > 32)
    len = 32;
   outw_p(len, SMB_HOST_DATA);

   for (i = 1; i <= len; i++)
    outb_p(data->block[i],
           SMB_HOST_BLOCK_DATA);
  }
  size = 136;
  break;
 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }


 outw_p(size & GE_CYC_TYPE_MASK, SMB_GLOBAL_ENABLE);

 status = amd756_transaction(adap);
 if (status)
  return status;

 if ((read_write == I2C_SMBUS_WRITE) || (size == AMD756_QUICK))
  return 0;


 switch (size) {
 case 135:
  data->byte = inw_p(SMB_HOST_DATA);
  break;
 case 134:
  data->byte = inw_p(SMB_HOST_DATA);
  break;
 case 133:
  data->word = inw_p(SMB_HOST_DATA);
  break;
 case 136:
  data->block[0] = inw_p(SMB_HOST_DATA) & 0x3f;
  if(data->block[0] > 32)
   data->block[0] = 32;

  for (i = 1; i <= data->block[0]; i++)
   data->block[i] = inb_p(SMB_HOST_BLOCK_DATA);
  break;
 }

 return 0;
}
