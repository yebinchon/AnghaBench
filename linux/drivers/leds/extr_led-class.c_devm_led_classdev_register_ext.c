
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_init_data {int dummy; } ;
struct led_classdev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_led_classdev_release ;
 int devres_add (struct device*,struct led_classdev**) ;
 struct led_classdev** devres_alloc (int ,int,int ) ;
 int devres_free (struct led_classdev**) ;
 int led_classdev_register_ext (struct device*,struct led_classdev*,struct led_init_data*) ;

int devm_led_classdev_register_ext(struct device *parent,
       struct led_classdev *led_cdev,
       struct led_init_data *init_data)
{
 struct led_classdev **dr;
 int rc;

 dr = devres_alloc(devm_led_classdev_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 rc = led_classdev_register_ext(parent, led_cdev, init_data);
 if (rc) {
  devres_free(dr);
  return rc;
 }

 *dr = led_cdev;
 devres_add(parent, dr);

 return 0;
}
