
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int open; int gdev_mutex; struct serdev_device* serdev; } ;
struct serdev_device {int dev; } ;
struct gnss_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 struct sirf_data* gnss_get_drvdata (struct gnss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int sirf_serdev_close (struct sirf_data*) ;
 int sirf_serdev_open (struct sirf_data*) ;

__attribute__((used)) static int sirf_open(struct gnss_device *gdev)
{
 struct sirf_data *data = gnss_get_drvdata(gdev);
 struct serdev_device *serdev = data->serdev;
 int ret;

 mutex_lock(&data->gdev_mutex);
 data->open = 1;
 mutex_unlock(&data->gdev_mutex);

 ret = sirf_serdev_open(data);
 if (ret) {
  mutex_lock(&data->gdev_mutex);
  data->open = 0;
  mutex_unlock(&data->gdev_mutex);
  return ret;
 }

 ret = pm_runtime_get_sync(&serdev->dev);
 if (ret < 0) {
  dev_err(&gdev->dev, "failed to runtime resume: %d\n", ret);
  pm_runtime_put_noidle(&serdev->dev);
  goto err_close;
 }

 return 0;

err_close:
 sirf_serdev_close(data);

 mutex_lock(&data->gdev_mutex);
 data->open = 0;
 mutex_unlock(&data->gdev_mutex);

 return ret;
}
