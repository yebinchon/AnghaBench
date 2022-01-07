
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct macio_dev* to_macio_device (struct device*) ;

struct macio_dev *macio_dev_get(struct macio_dev *dev)
{
 struct device *tmp;

 if (!dev)
  return ((void*)0);
 tmp = get_device(&dev->ofdev.dev);
 if (tmp)
  return to_macio_device(tmp);
 else
  return ((void*)0);
}
