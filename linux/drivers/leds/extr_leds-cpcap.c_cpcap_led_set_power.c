
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_led {int powered; int dev; int vdd; } ;


 int dev_err (int ,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int cpcap_led_set_power(struct cpcap_led *led, bool status)
{
 int err;

 if (status == led->powered)
  return 0;

 if (status)
  err = regulator_enable(led->vdd);
 else
  err = regulator_disable(led->vdd);

 if (err) {
  dev_err(led->dev, "regulator failure: %d", err);
  return err;
 }

 led->powered = status;

 return 0;
}
