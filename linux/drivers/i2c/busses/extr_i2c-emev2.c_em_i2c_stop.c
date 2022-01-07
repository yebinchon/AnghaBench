
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_i2c_device {int dummy; } ;


 int I2C_BIT_SPIE0 ;
 int I2C_BIT_SPT0 ;
 int I2C_OFS_IICC0 ;
 int em_clear_set_bit (struct em_i2c_device*,int ,int,int ) ;
 int em_i2c_wait_for_event (struct em_i2c_device*) ;

__attribute__((used)) static void em_i2c_stop(struct em_i2c_device *priv)
{

 em_clear_set_bit(priv, 0, I2C_BIT_SPT0 | I2C_BIT_SPIE0, I2C_OFS_IICC0);


 em_i2c_wait_for_event(priv);
}
