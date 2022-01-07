
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent; } ;
struct input_dev {TYPE_1__ dev; int poller; } ;


 int dev_err (TYPE_1__*,char*) ;

__attribute__((used)) static bool input_dev_ensure_poller(struct input_dev *dev)
{
 if (!dev->poller) {
  dev_err(dev->dev.parent ?: &dev->dev,
   "poller structure has not been set up\n");
  return 0;
 }

 return 1;
}
