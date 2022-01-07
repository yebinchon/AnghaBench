
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_msg {int size; } ;


 int DIV_ROUND_UP (int,int) ;
 int I2C_ADDR_LEN ;
 int I2C_DATA_LEN ;
 int I2C_START_LEN ;
 int I2C_STOP_LEN ;

__attribute__((used)) static int drm_dp_i2c_msg_duration(const struct drm_dp_aux_msg *msg,
       int i2c_speed_khz)
{

 return DIV_ROUND_UP((I2C_START_LEN + I2C_ADDR_LEN +
        msg->size * I2C_DATA_LEN +
        I2C_STOP_LEN) * 1000, i2c_speed_khz);
}
