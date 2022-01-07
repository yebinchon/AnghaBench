
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int result; int regmap; int data_ready; } ;
struct iio_dev {int dummy; } ;


 int ERESTARTSYS ;
 int ETIME ;
 int ZPA2326_CONVERSION_JIFFIES ;
 int ZPA2326_INT_SOURCE_REG ;
 int regmap_read (int ,int ,unsigned int*) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;
 int zpa2326_dbg (struct iio_dev const*,char*) ;
 int zpa2326_warn (struct iio_dev const*,char*,...) ;

__attribute__((used)) static int zpa2326_wait_oneshot_completion(const struct iio_dev *indio_dev,
        struct zpa2326_private *private)
{
 unsigned int val;
 long timeout;

 zpa2326_dbg(indio_dev, "waiting for one shot completion interrupt");

 timeout = wait_for_completion_interruptible_timeout(
  &private->data_ready, ZPA2326_CONVERSION_JIFFIES);
 if (timeout > 0)




  return private->result;


 regmap_read(private->regmap, ZPA2326_INT_SOURCE_REG, &val);

 if (!timeout) {

  zpa2326_warn(indio_dev, "no one shot interrupt occurred (%ld)",
        timeout);
  return -ETIME;
 }

 zpa2326_warn(indio_dev, "wait for one shot interrupt cancelled");
 return -ERESTARTSYS;
}
