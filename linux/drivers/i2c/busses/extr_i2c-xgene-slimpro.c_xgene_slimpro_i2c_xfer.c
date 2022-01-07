
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int * block; void* word; void* byte; } ;
typedef int u8 ;
typedef void* u32 ;
typedef int u16 ;
struct slimpro_i2c_dev {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int BYTE_DATA ;
 int EOPNOTSUPP ;

 int I2C_SMBUS_BLOCK_MAX ;



 char I2C_SMBUS_READ ;

 int IIC_SMB_WITHOUT_DATA_LEN ;
 int IIC_SMB_WITH_DATA_LEN ;
 int SLIMPRO_IIC_I2C_PROTOCOL ;
 int SLIMPRO_IIC_SMB_PROTOCOL ;
 int SMBUS_CMD_LEN ;
 int WORD_DATA ;
 struct slimpro_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int slimpro_i2c_blkrd (struct slimpro_i2c_dev*,int ,int ,int ,int ,int ,int ,int *) ;
 int slimpro_i2c_blkwr (struct slimpro_i2c_dev*,int ,int ,int ,int ,int ,int *) ;
 int slimpro_i2c_rd (struct slimpro_i2c_dev*,int ,int ,int ,int ,int ,void**) ;
 int slimpro_i2c_wr (struct slimpro_i2c_dev*,int ,int ,int ,int ,int ,void*) ;

__attribute__((used)) static int xgene_slimpro_i2c_xfer(struct i2c_adapter *adap, u16 addr,
      unsigned short flags, char read_write,
      u8 command, int size,
      union i2c_smbus_data *data)
{
 struct slimpro_i2c_dev *ctx = i2c_get_adapdata(adap);
 int ret = -EOPNOTSUPP;
 u32 val;

 switch (size) {
 case 131:
  if (read_write == I2C_SMBUS_READ) {
   ret = slimpro_i2c_rd(ctx, addr, 0, 0,
          SLIMPRO_IIC_SMB_PROTOCOL,
          BYTE_DATA, &val);
   data->byte = val;
  } else {
   ret = slimpro_i2c_wr(ctx, addr, command, SMBUS_CMD_LEN,
          SLIMPRO_IIC_SMB_PROTOCOL,
          0, 0);
  }
  break;
 case 130:
  if (read_write == I2C_SMBUS_READ) {
   ret = slimpro_i2c_rd(ctx, addr, command, SMBUS_CMD_LEN,
          SLIMPRO_IIC_SMB_PROTOCOL,
          BYTE_DATA, &val);
   data->byte = val;
  } else {
   val = data->byte;
   ret = slimpro_i2c_wr(ctx, addr, command, SMBUS_CMD_LEN,
          SLIMPRO_IIC_SMB_PROTOCOL,
          BYTE_DATA, val);
  }
  break;
 case 128:
  if (read_write == I2C_SMBUS_READ) {
   ret = slimpro_i2c_rd(ctx, addr, command, SMBUS_CMD_LEN,
          SLIMPRO_IIC_SMB_PROTOCOL,
          WORD_DATA, &val);
   data->word = val;
  } else {
   val = data->word;
   ret = slimpro_i2c_wr(ctx, addr, command, SMBUS_CMD_LEN,
          SLIMPRO_IIC_SMB_PROTOCOL,
          WORD_DATA, val);
  }
  break;
 case 132:
  if (read_write == I2C_SMBUS_READ) {
   ret = slimpro_i2c_blkrd(ctx, addr, command,
      SMBUS_CMD_LEN,
      SLIMPRO_IIC_SMB_PROTOCOL,
      I2C_SMBUS_BLOCK_MAX + 1,
      IIC_SMB_WITH_DATA_LEN,
      &data->block[0]);

  } else {
   ret = slimpro_i2c_blkwr(ctx, addr, command,
      SMBUS_CMD_LEN,
      SLIMPRO_IIC_SMB_PROTOCOL,
      data->block[0] + 1,
      &data->block[0]);
  }
  break;
 case 129:
  if (read_write == I2C_SMBUS_READ) {
   ret = slimpro_i2c_blkrd(ctx, addr,
      command,
      SMBUS_CMD_LEN,
      SLIMPRO_IIC_I2C_PROTOCOL,
      I2C_SMBUS_BLOCK_MAX,
      IIC_SMB_WITHOUT_DATA_LEN,
      &data->block[1]);
  } else {
   ret = slimpro_i2c_blkwr(ctx, addr, command,
      SMBUS_CMD_LEN,
      SLIMPRO_IIC_I2C_PROTOCOL,
      data->block[0],
      &data->block[1]);
  }
  break;
 default:
  break;
 }
 return ret;
}
