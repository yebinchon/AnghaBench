
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_led_trigger_release ;
 int devres_add (struct device*,struct led_trigger**) ;
 struct led_trigger** devres_alloc (int ,int,int ) ;
 int devres_free (struct led_trigger**) ;
 int led_trigger_register (struct led_trigger*) ;

int devm_led_trigger_register(struct device *dev,
         struct led_trigger *trig)
{
 struct led_trigger **dr;
 int rc;

 dr = devres_alloc(devm_led_trigger_release, sizeof(*dr),
     GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 *dr = trig;

 rc = led_trigger_register(trig);
 if (rc)
  devres_free(dr);
 else
  devres_add(dev, dr);

 return rc;
}
