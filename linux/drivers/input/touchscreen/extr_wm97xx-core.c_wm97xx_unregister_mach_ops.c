
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int codec_mutex; int * mach_ops; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void wm97xx_unregister_mach_ops(struct wm97xx *wm)
{
 mutex_lock(&wm->codec_mutex);
 wm->mach_ops = ((void*)0);
 mutex_unlock(&wm->codec_mutex);
}
