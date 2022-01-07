
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_mach_ops {int dummy; } ;
struct wm97xx {int codec_mutex; struct wm97xx_mach_ops* mach_ops; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int wm97xx_register_mach_ops(struct wm97xx *wm,
        struct wm97xx_mach_ops *mach_ops)
{
 mutex_lock(&wm->codec_mutex);
 if (wm->mach_ops) {
  mutex_unlock(&wm->codec_mutex);
  return -EINVAL;
 }
 wm->mach_ops = mach_ops;
 mutex_unlock(&wm->codec_mutex);

 return 0;
}
