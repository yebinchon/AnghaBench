
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mga_i2c_chan {int clock; TYPE_1__* dev; } ;
struct mga_device {int dummy; } ;
struct TYPE_2__ {struct mga_device* dev_private; } ;


 int mga_i2c_set (struct mga_device*,int ,int) ;

__attribute__((used)) static void mga_gpio_setscl(void *data, int state)
{
 struct mga_i2c_chan *i2c = data;
 struct mga_device *mdev = i2c->dev->dev_private;
 mga_i2c_set(mdev, i2c->clock, state);
}
