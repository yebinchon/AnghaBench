
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int dev; int map; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int MPU3050_PWR_MGM ;
 int MPU3050_PWR_MGM_SLEEP ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mpu3050_power_up(struct mpu3050 *mpu3050)
{
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(mpu3050->regs), mpu3050->regs);
 if (ret) {
  dev_err(mpu3050->dev, "cannot enable regulators\n");
  return ret;
 }




 msleep(200);


 ret = regmap_update_bits(mpu3050->map, MPU3050_PWR_MGM,
     MPU3050_PWR_MGM_SLEEP, 0);
 if (ret) {
  dev_err(mpu3050->dev, "error setting power mode\n");
  return ret;
 }
 usleep_range(10000, 20000);

 return 0;
}
