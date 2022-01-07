
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads8688_state {int vref_mv; } ;
typedef int ssize_t ;
struct TYPE_2__ {int scale; } ;


 TYPE_1__* ads8688_range_def ;
 int dev_to_iio_dev (struct device*) ;
 struct ads8688_state* iio_priv (int ) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t ads8688_show_scales(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct ads8688_state *st = iio_priv(dev_to_iio_dev(dev));

 return sprintf(buf, "0.%09u 0.%09u 0.%09u\n",
         ads8688_range_def[0].scale * st->vref_mv,
         ads8688_range_def[1].scale * st->vref_mv,
         ads8688_range_def[2].scale * st->vref_mv);
}
