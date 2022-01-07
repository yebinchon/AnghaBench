
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int open; int gdev_mutex; struct serdev_device* serdev; } ;
struct serdev_device {int dev; } ;
struct gnss_device {int dummy; } ;


 struct sirf_data* gnss_get_drvdata (struct gnss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int *) ;
 int sirf_serdev_close (struct sirf_data*) ;

__attribute__((used)) static void sirf_close(struct gnss_device *gdev)
{
 struct sirf_data *data = gnss_get_drvdata(gdev);
 struct serdev_device *serdev = data->serdev;

 sirf_serdev_close(data);

 pm_runtime_put(&serdev->dev);

 mutex_lock(&data->gdev_mutex);
 data->open = 0;
 mutex_unlock(&data->gdev_mutex);
}
