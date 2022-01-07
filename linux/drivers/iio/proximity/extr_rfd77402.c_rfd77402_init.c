
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rfd77402_data {int client; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int RFD77402_CMD_MCPU_OFF ;
 int RFD77402_CMD_MCPU_ON ;
 int RFD77402_CMD_STANDBY ;
 int RFD77402_I2C_ADDR_INCR ;
 int RFD77402_I2C_DATA_INCR ;
 int RFD77402_I2C_HOST_DEBUG ;
 int RFD77402_I2C_INIT_CFG ;
 int RFD77402_I2C_MCPU_DEBUG ;
 int RFD77402_ICSR ;
 int RFD77402_ICSR_INT_MODE ;
 int RFD77402_PMU_CFG ;
 int RFD77402_STATUS_MCPU_OFF ;
 int RFD77402_STATUS_MCPU_ON ;
 int RFD77402_STATUS_STANDBY ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int i2c_smbus_write_word_data (int ,int ,int) ;
 TYPE_1__* rf77402_tof_config ;
 int rfd77402_set_state (struct rfd77402_data*,int ,int ) ;

__attribute__((used)) static int rfd77402_init(struct rfd77402_data *data)
{
 int ret, i;

 ret = rfd77402_set_state(data, RFD77402_CMD_STANDBY,
     RFD77402_STATUS_STANDBY);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_byte_data(data->client, RFD77402_ICSR,
     RFD77402_ICSR_INT_MODE);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_word_data(data->client, RFD77402_I2C_INIT_CFG,
     RFD77402_I2C_ADDR_INCR |
     RFD77402_I2C_DATA_INCR |
     RFD77402_I2C_HOST_DEBUG |
     RFD77402_I2C_MCPU_DEBUG);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_word_data(data->client, RFD77402_PMU_CFG, 0x0500);
 if (ret < 0)
  return ret;

 ret = rfd77402_set_state(data, RFD77402_CMD_MCPU_OFF,
     RFD77402_STATUS_MCPU_OFF);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_word_data(data->client, RFD77402_PMU_CFG, 0x0600);
 if (ret < 0)
  return ret;

 ret = rfd77402_set_state(data, RFD77402_CMD_MCPU_ON,
     RFD77402_STATUS_MCPU_ON);
 if (ret < 0)
  return ret;

 for (i = 0; i < ARRAY_SIZE(rf77402_tof_config); i++) {
  ret = i2c_smbus_write_word_data(data->client,
      rf77402_tof_config[i].reg,
      rf77402_tof_config[i].val);
  if (ret < 0)
   return ret;
 }

 ret = rfd77402_set_state(data, RFD77402_CMD_STANDBY,
     RFD77402_STATUS_STANDBY);

 return ret;
}
