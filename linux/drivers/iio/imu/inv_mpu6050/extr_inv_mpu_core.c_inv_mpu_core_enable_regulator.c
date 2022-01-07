
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inv_mpu6050_state {int map; int vddio_supply; } ;


 int dev_err (int ,char*,int) ;
 int regmap_get_device (int ) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int inv_mpu_core_enable_regulator(struct inv_mpu6050_state *st)
{
 int result;

 result = regulator_enable(st->vddio_supply);
 if (result) {
  dev_err(regmap_get_device(st->map),
   "Failed to enable regulator: %d\n", result);
 } else {

  usleep_range(35000, 70000);
 }

 return result;
}
