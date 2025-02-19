
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct max6650_data* devdata; } ;
struct max6650_data {int config; unsigned long cooling_dev_state; int update_lock; int dac; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int MAX6650_CFG_MODE_OFF ;
 int MAX6650_CFG_MODE_OPEN_LOOP ;
 int MAX6650_CFG_V12 ;
 int MAX6650_REG_DAC ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int max6650_set_operating_mode (struct max6650_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_to_dac (unsigned long,int) ;

__attribute__((used)) static int max6650_set_cur_state(struct thermal_cooling_device *cdev,
     unsigned long state)
{
 struct max6650_data *data = cdev->devdata;
 struct i2c_client *client = data->client;
 int err;

 state = clamp_val(state, 0, 255);

 mutex_lock(&data->update_lock);

 data->dac = pwm_to_dac(state, data->config & MAX6650_CFG_V12);
 err = i2c_smbus_write_byte_data(client, MAX6650_REG_DAC, data->dac);
 if (!err) {
  max6650_set_operating_mode(data, state ?
        MAX6650_CFG_MODE_OPEN_LOOP :
        MAX6650_CFG_MODE_OFF);
  data->cooling_dev_state = state;
 }

 mutex_unlock(&data->update_lock);

 return err;
}
