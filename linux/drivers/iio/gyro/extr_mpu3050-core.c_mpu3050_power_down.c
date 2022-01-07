
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int dev; int regs; int map; } ;


 int ARRAY_SIZE (int ) ;
 int MPU3050_PWR_MGM ;
 int MPU3050_PWR_MGM_SLEEP ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int mpu3050_power_down(struct mpu3050 *mpu3050)
{
 int ret;
 ret = regmap_update_bits(mpu3050->map, MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_SLEEP, MPU3050_PWR_MGM_SLEEP);
 if (ret)
  dev_err(mpu3050->dev, "error putting to sleep\n");

 ret = regulator_bulk_disable(ARRAY_SIZE(mpu3050->regs), mpu3050->regs);
 if (ret)
  dev_err(mpu3050->dev, "error disabling regulators\n");

 return 0;
}
