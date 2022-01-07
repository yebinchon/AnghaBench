
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pcf_data {int data; int (* waitforpin ) (int ) ;} ;


 int DEF_TIMEOUT ;
 int EINTR ;
 int ETIMEDOUT ;
 int I2C_PCF_LAB ;
 int I2C_PCF_PIN ;
 int get_pcf (struct i2c_algo_pcf_data*,int) ;
 int handle_lab (struct i2c_algo_pcf_data*,int*) ;
 int stub1 (int ) ;

__attribute__((used)) static int wait_for_pin(struct i2c_algo_pcf_data *adap, int *status)
{

 int timeout = DEF_TIMEOUT;

 *status = get_pcf(adap, 1);

 while ((*status & I2C_PCF_PIN) && --timeout) {
  adap->waitforpin(adap->data);
  *status = get_pcf(adap, 1);
 }
 if (*status & I2C_PCF_LAB) {
  handle_lab(adap, status);
  return -EINTR;
 }

 if (timeout == 0)
  return -ETIMEDOUT;

 return 0;
}
