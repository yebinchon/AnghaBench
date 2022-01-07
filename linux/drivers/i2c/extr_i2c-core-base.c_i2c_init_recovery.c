
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_bus_recovery_info {scalar_t__ recover_bus; int get_sda; int set_sda; int get_scl; int set_scl; scalar_t__ sda_gpiod; scalar_t__ scl_gpiod; } ;
struct i2c_adapter {struct i2c_bus_recovery_info* bus_recovery_info; int dev; } ;


 int dev_err (int *,char*,char*) ;
 int get_scl_gpio_value ;
 int get_sda_gpio_value ;
 scalar_t__ gpiod_get_direction (scalar_t__) ;
 scalar_t__ i2c_generic_scl_recovery ;
 int set_scl_gpio_value ;
 int set_sda_gpio_value ;

__attribute__((used)) static void i2c_init_recovery(struct i2c_adapter *adap)
{
 struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
 char *err_str;

 if (!bri)
  return;

 if (!bri->recover_bus) {
  err_str = "no recover_bus() found";
  goto err;
 }

 if (bri->scl_gpiod && bri->recover_bus == i2c_generic_scl_recovery) {
  bri->get_scl = get_scl_gpio_value;
  bri->set_scl = set_scl_gpio_value;
  if (bri->sda_gpiod) {
   bri->get_sda = get_sda_gpio_value;

   if (gpiod_get_direction(bri->sda_gpiod) == 0)
    bri->set_sda = set_sda_gpio_value;
  }
  return;
 }

 if (bri->recover_bus == i2c_generic_scl_recovery) {

  if (!bri->set_scl || !bri->get_scl) {
   err_str = "no {get|set}_scl() found";
   goto err;
  }
  if (!bri->set_sda && !bri->get_sda) {
   err_str = "either get_sda() or set_sda() needed";
   goto err;
  }
 }

 return;
 err:
 dev_err(&adap->dev, "Not using recovery: %s\n", err_str);
 adap->bus_recovery_info = ((void*)0);
}
