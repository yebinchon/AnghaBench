
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_gpio_release ;
 int devres_add (struct device*,unsigned int*) ;
 unsigned int* devres_alloc (int ,int,int ) ;
 int devres_free (unsigned int*) ;
 int gpio_request (unsigned int,char const*) ;

int devm_gpio_request(struct device *dev, unsigned gpio, const char *label)
{
 unsigned *dr;
 int rc;

 dr = devres_alloc(devm_gpio_release, sizeof(unsigned), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 rc = gpio_request(gpio, label);
 if (rc) {
  devres_free(dr);
  return rc;
 }

 *dr = gpio;
 devres_add(dev, dr);

 return 0;
}
