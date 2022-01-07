
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bmi160_data {int regmap; } ;
typedef int sample ;
typedef enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;


 int IIO_MOD_X ;
 TYPE_1__* bmi160_regs ;
 int bmi160_to_sensor (int) ;
 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,scalar_t__,int *,int) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int bmi160_get_data(struct bmi160_data *data, int chan_type,
      int axis, int *val)
{
 u8 reg;
 int ret;
 __le16 sample;
 enum bmi160_sensor_type t = bmi160_to_sensor(chan_type);

 reg = bmi160_regs[t].data + (axis - IIO_MOD_X) * sizeof(sample);

 ret = regmap_bulk_read(data->regmap, reg, &sample, sizeof(sample));
 if (ret)
  return ret;

 *val = sign_extend32(le16_to_cpu(sample), 15);

 return 0;
}
