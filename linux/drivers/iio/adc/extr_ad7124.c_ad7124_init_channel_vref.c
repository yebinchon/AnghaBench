
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* spi; } ;
struct ad7124_state {TYPE_3__ sd; TYPE_1__* channel_config; int * vref; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {unsigned int refsel; int vref_mv; } ;






 int EINVAL ;
 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int* ad7124_ref_names ;
 int dev_err (int *,char*,unsigned int) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7124_init_channel_vref(struct ad7124_state *st,
        unsigned int channel_number)
{
 unsigned int refsel = st->channel_config[channel_number].refsel;

 switch (refsel) {
 case 129:
 case 128:
 case 131:
  if (IS_ERR(st->vref[refsel])) {
   dev_err(&st->sd.spi->dev,
    "Error, trying to use external voltage reference without a %s regulator.\n",
    ad7124_ref_names[refsel]);
   return PTR_ERR(st->vref[refsel]);
  }
  st->channel_config[channel_number].vref_mv =
   regulator_get_voltage(st->vref[refsel]);

  st->channel_config[channel_number].vref_mv /= 1000;
  break;
 case 130:
  st->channel_config[channel_number].vref_mv = 2500;
  break;
 default:
  dev_err(&st->sd.spi->dev, "Invalid reference %d\n", refsel);
  return -EINVAL;
 }

 return 0;
}
