
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inv_mpu6050_state {int map; } ;
typedef int __be16 ;


 int EINVAL ;
 int IIO_MOD_X ;
 int cpu_to_be16 (int) ;
 int regmap_bulk_write (int ,int,int *,int) ;

__attribute__((used)) static int inv_mpu6050_sensor_set(struct inv_mpu6050_state *st, int reg,
    int axis, int val)
{
 int ind, result;
 __be16 d = cpu_to_be16(val);

 ind = (axis - IIO_MOD_X) * 2;
 result = regmap_bulk_write(st->map, reg + ind, (u8 *)&d, 2);
 if (result)
  return -EINVAL;

 return 0;
}
