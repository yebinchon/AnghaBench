
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int user_count; int buf_mutex; int iter_list; } ;
struct intel_th_device {int dev; } ;


 int EBUSY ;
 int ENODEV ;
 int atomic_dec (int *) ;
 int atomic_inc_unless_negative (int *) ;
 struct msc* dev_get_drvdata (int *) ;
 scalar_t__ list_empty (int *) ;
 int msc_configure (struct msc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int intel_th_msc_activate(struct intel_th_device *thdev)
{
 struct msc *msc = dev_get_drvdata(&thdev->dev);
 int ret = -EBUSY;

 if (!atomic_inc_unless_negative(&msc->user_count))
  return -ENODEV;

 mutex_lock(&msc->buf_mutex);


 if (list_empty(&msc->iter_list))
  ret = msc_configure(msc);

 mutex_unlock(&msc->buf_mutex);

 if (ret)
  atomic_dec(&msc->user_count);

 return ret;
}
