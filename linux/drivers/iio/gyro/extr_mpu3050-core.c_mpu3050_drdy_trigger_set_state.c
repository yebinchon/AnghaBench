
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int hw_irq_trigger; int pending_fifo_footer; int map; scalar_t__ irq_opendrain; scalar_t__ irq_latch; scalar_t__ irq_actl; int dev; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int MPU3050_FIFO_EN ;
 unsigned int MPU3050_FIFO_EN_FOOTER ;
 unsigned int MPU3050_FIFO_EN_GYRO_XOUT ;
 unsigned int MPU3050_FIFO_EN_GYRO_YOUT ;
 unsigned int MPU3050_FIFO_EN_GYRO_ZOUT ;
 unsigned int MPU3050_FIFO_EN_TEMP_OUT ;
 unsigned int MPU3050_INT_ACTL ;
 int MPU3050_INT_CFG ;
 unsigned int MPU3050_INT_LATCH_EN ;
 unsigned int MPU3050_INT_OPEN ;
 unsigned int MPU3050_INT_RAW_RDY_EN ;
 int MPU3050_INT_STATUS ;
 int MPU3050_USR_CTRL ;
 unsigned int MPU3050_USR_CTRL_FIFO_EN ;
 unsigned int MPU3050_USR_CTRL_FIFO_RST ;
 int dev_err (int ,char*) ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mpu3050_start_sampling (struct mpu3050*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int mpu3050_drdy_trigger_set_state(struct iio_trigger *trig,
       bool enable)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);
 unsigned int val;
 int ret;


 if (!enable) {

  ret = regmap_write(mpu3050->map,
       MPU3050_INT_CFG,
       0);
  if (ret)
   dev_err(mpu3050->dev, "error disabling IRQ\n");


  ret = regmap_read(mpu3050->map, MPU3050_INT_STATUS, &val);
  if (ret)
   dev_err(mpu3050->dev, "error clearing IRQ status\n");


  ret = regmap_write(mpu3050->map, MPU3050_FIFO_EN, 0);
  if (ret)
   dev_err(mpu3050->dev, "error disabling FIFO\n");

  ret = regmap_write(mpu3050->map, MPU3050_USR_CTRL,
       MPU3050_USR_CTRL_FIFO_RST);
  if (ret)
   dev_err(mpu3050->dev, "error resetting FIFO\n");

  pm_runtime_mark_last_busy(mpu3050->dev);
  pm_runtime_put_autosuspend(mpu3050->dev);
  mpu3050->hw_irq_trigger = 0;

  return 0;
 } else {

  pm_runtime_get_sync(mpu3050->dev);
  mpu3050->hw_irq_trigger = 1;


  ret = regmap_write(mpu3050->map, MPU3050_FIFO_EN, 0);
  if (ret)
   return ret;


  ret = regmap_update_bits(mpu3050->map, MPU3050_USR_CTRL,
      MPU3050_USR_CTRL_FIFO_EN |
      MPU3050_USR_CTRL_FIFO_RST,
      MPU3050_USR_CTRL_FIFO_EN |
      MPU3050_USR_CTRL_FIFO_RST);
  if (ret)
   return ret;

  mpu3050->pending_fifo_footer = 0;


  ret = regmap_write(mpu3050->map, MPU3050_FIFO_EN,
       MPU3050_FIFO_EN_TEMP_OUT |
       MPU3050_FIFO_EN_GYRO_XOUT |
       MPU3050_FIFO_EN_GYRO_YOUT |
       MPU3050_FIFO_EN_GYRO_ZOUT |
       MPU3050_FIFO_EN_FOOTER);
  if (ret)
   return ret;


  ret = mpu3050_start_sampling(mpu3050);
  if (ret)
   return ret;


  ret = regmap_read(mpu3050->map, MPU3050_INT_STATUS, &val);
  if (ret)
   dev_err(mpu3050->dev, "error clearing IRQ status\n");


  val = MPU3050_INT_RAW_RDY_EN;

  if (mpu3050->irq_actl)
   val |= MPU3050_INT_ACTL;
  if (mpu3050->irq_latch)
   val |= MPU3050_INT_LATCH_EN;
  if (mpu3050->irq_opendrain)
   val |= MPU3050_INT_OPEN;

  ret = regmap_write(mpu3050->map, MPU3050_INT_CFG, val);
  if (ret)
   return ret;
 }

 return 0;
}
