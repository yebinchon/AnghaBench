
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ad7606_state {int dev; TYPE_2__* bops; scalar_t__ gpio_frstdata; int * data; TYPE_1__* chip_info; } ;
struct TYPE_4__ {int (* read_block ) (int ,int,int *) ;} ;
struct TYPE_3__ {unsigned int num_channels; } ;


 int EIO ;
 int ad7606_reset (struct ad7606_state*) ;
 int gpiod_get_value (scalar_t__) ;
 int stub1 (int ,int,int *) ;
 int stub2 (int ,unsigned int,int *) ;

__attribute__((used)) static int ad7606_read_samples(struct ad7606_state *st)
{
 unsigned int num = st->chip_info->num_channels;
 u16 *data = st->data;
 int ret;
 if (st->gpio_frstdata) {
  ret = st->bops->read_block(st->dev, 1, data);
  if (ret)
   return ret;

  if (!gpiod_get_value(st->gpio_frstdata)) {
   ad7606_reset(st);
   return -EIO;
  }

  data++;
  num--;
 }

 return st->bops->read_block(st->dev, num, data);
}
