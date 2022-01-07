
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inv_mpu6050_state {int map; } ;
typedef int __be16 ;


 int EINVAL ;
 int IIO_MOD_X ;
 int IIO_VAL_INT ;
 scalar_t__ be16_to_cpup (int *) ;
 int regmap_bulk_read (int ,int,int *,int) ;

__attribute__((used)) static int inv_mpu6050_sensor_show(struct inv_mpu6050_state *st, int reg,
       int axis, int *val)
{
 int ind, result;
 __be16 d;

 ind = (axis - IIO_MOD_X) * 2;
 result = regmap_bulk_read(st->map, reg + ind, (u8 *)&d, 2);
 if (result)
  return -EINVAL;
 *val = (short)be16_to_cpup(&d);

 return IIO_VAL_INT;
}
