
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_sensor_data {TYPE_3__* sensor_settings; } ;
struct iio_dev {int mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* fs_avl; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct TYPE_4__ {scalar_t__ num; int gain; } ;


 scalar_t__ PAGE_SIZE ;
 int ST_SENSORS_FULLSCALE_AVL_MAX ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int,int) ;

ssize_t st_sensors_sysfs_scale_avail(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int i, len = 0, q, r;
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 mutex_lock(&indio_dev->mlock);
 for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {
  if (sdata->sensor_settings->fs.fs_avl[i].num == 0)
   break;

  q = sdata->sensor_settings->fs.fs_avl[i].gain / 1000000;
  r = sdata->sensor_settings->fs.fs_avl[i].gain % 1000000;

  len += scnprintf(buf + len, PAGE_SIZE - len, "%u.%06u ", q, r);
 }
 mutex_unlock(&indio_dev->mlock);
 buf[len - 1] = '\n';

 return len;
}
