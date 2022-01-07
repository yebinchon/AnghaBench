
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inv_mpu6050_state {int map; int vddio_supply; } ;


 int dev_err (int ,char*,int) ;
 int regmap_get_device (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int inv_mpu_core_disable_regulator(struct inv_mpu6050_state *st)
{
 int result;

 result = regulator_disable(st->vddio_supply);
 if (result)
  dev_err(regmap_get_device(st->map),
   "Failed to disable regulator: %d\n", result);

 return result;
}
