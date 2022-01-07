
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int EOPNOTSUPP ;






 char I2C_SMBUS_WRITE ;
 int SIS630_BLOCK_DATA ;



 int SIS630_QUICK ;

 int SMB_ADDR ;
 int SMB_BYTE ;
 int SMB_CMD ;
 int dev_warn (int *,char*,int) ;
 int sis630_block_data (struct i2c_adapter*,union i2c_smbus_data*,char) ;
 int sis630_read (int ) ;
 int sis630_transaction (struct i2c_adapter*,int) ;
 int sis630_write (int ,int) ;

__attribute__((used)) static s32 sis630_access(struct i2c_adapter *adap, u16 addr,
    unsigned short flags, char read_write,
    u8 command, int size, union i2c_smbus_data *data)
{
 int status;

 switch (size) {
 case 133:
  sis630_write(SMB_ADDR,
        ((addr & 0x7f) << 1) | (read_write & 0x01));
  size = SIS630_QUICK;
  break;
 case 136:
  sis630_write(SMB_ADDR,
        ((addr & 0x7f) << 1) | (read_write & 0x01));
  if (read_write == I2C_SMBUS_WRITE)
   sis630_write(SMB_CMD, command);
  size = 131;
  break;
 case 135:
  sis630_write(SMB_ADDR,
        ((addr & 0x7f) << 1) | (read_write & 0x01));
  sis630_write(SMB_CMD, command);
  if (read_write == I2C_SMBUS_WRITE)
   sis630_write(SMB_BYTE, data->byte);
  size = 130;
  break;
 case 134:
 case 132:
  sis630_write(SMB_ADDR,
        ((addr & 0x7f) << 1) | (read_write & 0x01));
  sis630_write(SMB_CMD, command);
  if (read_write == I2C_SMBUS_WRITE) {
   sis630_write(SMB_BYTE, data->word & 0xff);
   sis630_write(SMB_BYTE + 1, (data->word & 0xff00) >> 8);
  }
  size = (size == 134 ?
   129 : 128);
  break;
 case 137:
  sis630_write(SMB_ADDR,
        ((addr & 0x7f) << 1) | (read_write & 0x01));
  sis630_write(SMB_CMD, command);
  size = SIS630_BLOCK_DATA;
  return sis630_block_data(adap, data, read_write);
 default:
  dev_warn(&adap->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }

 status = sis630_transaction(adap, size);
 if (status)
  return status;

 if ((size != 129) &&
  ((read_write == I2C_SMBUS_WRITE) || (size == SIS630_QUICK))) {
  return 0;
 }

 switch (size) {
 case 131:
 case 130:
  data->byte = sis630_read(SMB_BYTE);
  break;
 case 129:
 case 128:
  data->word = sis630_read(SMB_BYTE) +
        (sis630_read(SMB_BYTE + 1) << 8);
  break;
 }

 return 0;
}
