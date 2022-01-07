
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thc63_dev {void* pdwn; int dev; void* oe; } ;


 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,int) ;
 void* devm_gpiod_get_optional (int ,char*,int ) ;

__attribute__((used)) static int thc63_gpio_init(struct thc63_dev *thc63)
{
 thc63->oe = devm_gpiod_get_optional(thc63->dev, "oe", GPIOD_OUT_LOW);
 if (IS_ERR(thc63->oe)) {
  dev_err(thc63->dev, "Unable to get \"oe-gpios\": %ld\n",
   PTR_ERR(thc63->oe));
  return PTR_ERR(thc63->oe);
 }

 thc63->pdwn = devm_gpiod_get_optional(thc63->dev, "powerdown",
           GPIOD_OUT_HIGH);
 if (IS_ERR(thc63->pdwn)) {
  dev_err(thc63->dev, "Unable to get \"powerdown-gpios\": %ld\n",
   PTR_ERR(thc63->pdwn));
  return PTR_ERR(thc63->pdwn);
 }

 return 0;
}
