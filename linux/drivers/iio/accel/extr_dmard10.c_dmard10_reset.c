
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int DMARD10_MODE_ACTIVE ;
 unsigned char DMARD10_MODE_READ_OTP ;
 unsigned char DMARD10_MODE_RESET_DATA_PATH ;
 unsigned char DMARD10_MODE_STANDBY ;
 unsigned char DMARD10_REG_ACTR ;
 unsigned char DMARD10_REG_AFEM ;
 unsigned char DMARD10_REG_MISC2 ;
 unsigned char DMARD10_REG_PD ;
 unsigned char DMARD10_VALUE_AFEM_AFEN_NORMAL ;
 unsigned char DMARD10_VALUE_CKSEL_ODR_100_204 ;
 unsigned char DMARD10_VALUE_INTC ;
 int DMARD10_VALUE_MISC2_OSCA_EN ;
 int DMARD10_VALUE_PD_RST ;
 unsigned char DMARD10_VALUE_TAPNS_AVE_2 ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,int ) ;

__attribute__((used)) static int dmard10_reset(struct i2c_client *client)
{
 unsigned char buffer[7];
 int ret;


 ret = i2c_smbus_write_byte_data(client, DMARD10_REG_PD,
      DMARD10_VALUE_PD_RST);
 if (ret < 0)
  return ret;





 buffer[0] = DMARD10_REG_ACTR;
 buffer[1] = DMARD10_MODE_STANDBY;
 buffer[2] = DMARD10_MODE_READ_OTP;
 buffer[3] = DMARD10_MODE_STANDBY;
 buffer[4] = DMARD10_MODE_RESET_DATA_PATH;
 buffer[5] = DMARD10_MODE_STANDBY;
 ret = i2c_master_send(client, buffer, 6);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_byte_data(client, DMARD10_REG_MISC2,
      DMARD10_VALUE_MISC2_OSCA_EN);
 if (ret < 0)
  return ret;


 buffer[0] = DMARD10_REG_AFEM;
 buffer[1] = DMARD10_VALUE_AFEM_AFEN_NORMAL;
 buffer[2] = DMARD10_VALUE_CKSEL_ODR_100_204;
 buffer[3] = DMARD10_VALUE_INTC;
 buffer[4] = DMARD10_VALUE_TAPNS_AVE_2;
 buffer[5] = 0x00;
 buffer[6] = 0x07;
 ret = i2c_master_send(client, buffer, 7);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_byte_data(client, DMARD10_REG_ACTR,
      DMARD10_MODE_ACTIVE);
 if (ret < 0)
  return ret;

 return 0;
}
