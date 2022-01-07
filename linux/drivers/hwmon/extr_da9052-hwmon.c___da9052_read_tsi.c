
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct da9052_hwmon {int tsidone; } ;
typedef int ssize_t ;


 int ETIMEDOUT ;
 int da9052_get_tsi_result (struct da9052_hwmon*,int) ;
 int da9052_request_tsi_read (struct da9052_hwmon*,int) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static ssize_t __da9052_read_tsi(struct device *dev, int channel)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int ret;

 reinit_completion(&hwmon->tsidone);

 ret = da9052_request_tsi_read(hwmon, channel);
 if (ret < 0)
  return ret;


 if (!wait_for_completion_timeout(&hwmon->tsidone,
      msecs_to_jiffies(500)))
  return -ETIMEDOUT;

 return da9052_get_tsi_result(hwmon, channel);
}
