
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int buf_mutex; int user_count; scalar_t__ enabled; } ;
struct intel_th_device {int dev; } ;


 int atomic_dec (int *) ;
 struct msc* dev_get_drvdata (int *) ;
 int msc_disable (struct msc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_th_msc_deactivate(struct intel_th_device *thdev)
{
 struct msc *msc = dev_get_drvdata(&thdev->dev);

 mutex_lock(&msc->buf_mutex);
 if (msc->enabled) {
  msc_disable(msc);
  atomic_dec(&msc->user_count);
 }
 mutex_unlock(&msc->buf_mutex);
}
