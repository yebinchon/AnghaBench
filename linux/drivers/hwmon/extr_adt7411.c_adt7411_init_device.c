
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adt7411_data {int use_ext_temp; int client; } ;


 int ADT7411_CFG1_EXT_TDM ;
 int ADT7411_CFG1_RESERVED_BIT1 ;
 int ADT7411_CFG1_RESERVED_BIT3 ;
 int ADT7411_CFG1_START_MONITOR ;
 int ADT7411_CFG3_RESERVED_BIT1 ;
 int ADT7411_CFG3_RESERVED_BIT2 ;
 int ADT7411_CFG3_RESERVED_BIT3 ;
 int ADT7411_REG_CFG1 ;
 int ADT7411_REG_CFG3 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int adt7411_init_device(struct adt7411_data *data)
{
 int ret;
 u8 val;

 ret = i2c_smbus_read_byte_data(data->client, ADT7411_REG_CFG3);
 if (ret < 0)
  return ret;





 val = ret;
 val &= ~(ADT7411_CFG3_RESERVED_BIT1 | ADT7411_CFG3_RESERVED_BIT2);
 val |= ADT7411_CFG3_RESERVED_BIT3;

 ret = i2c_smbus_write_byte_data(data->client, ADT7411_REG_CFG3, val);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(data->client, ADT7411_REG_CFG1);
 if (ret < 0)
  return ret;

 data->use_ext_temp = ret & ADT7411_CFG1_EXT_TDM;





 val = ret;
 val &= ~ADT7411_CFG1_RESERVED_BIT1;
 val |= ADT7411_CFG1_RESERVED_BIT3;


 val |= ADT7411_CFG1_START_MONITOR;

 return i2c_smbus_write_byte_data(data->client, ADT7411_REG_CFG1, val);
}
