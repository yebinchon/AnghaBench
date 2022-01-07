
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pa12203001_data {int map; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 struct pa12203001_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int ) ;
 TYPE_1__* regvals ;

__attribute__((used)) static int pa12203001_init(struct iio_dev *indio_dev)
{
 struct pa12203001_data *data = iio_priv(indio_dev);
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(regvals); i++) {
  ret = regmap_write(data->map, regvals[i].reg, regvals[i].val);
  if (ret < 0)
   return ret;
 }

 return 0;
}
