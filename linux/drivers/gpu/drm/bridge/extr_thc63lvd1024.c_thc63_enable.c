
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thc63_dev {int oe; int pdwn; int dev; int vcc; } ;
struct drm_bridge {int dummy; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int regulator_enable (int ) ;
 struct thc63_dev* to_thc63 (struct drm_bridge*) ;

__attribute__((used)) static void thc63_enable(struct drm_bridge *bridge)
{
 struct thc63_dev *thc63 = to_thc63(bridge);
 int ret;

 ret = regulator_enable(thc63->vcc);
 if (ret) {
  dev_err(thc63->dev,
   "Failed to enable regulator \"vcc\": %d\n", ret);
  return;
 }

 gpiod_set_value(thc63->pdwn, 0);
 gpiod_set_value(thc63->oe, 1);
}
