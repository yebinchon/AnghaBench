
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int lock; } ;


 unsigned int DEVFREQ_GOV_START ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_devfreq (struct devfreq*) ;

__attribute__((used)) static int devfreq_performance_handler(struct devfreq *devfreq,
    unsigned int event, void *data)
{
 int ret = 0;

 if (event == DEVFREQ_GOV_START) {
  mutex_lock(&devfreq->lock);
  ret = update_devfreq(devfreq);
  mutex_unlock(&devfreq->lock);
 }

 return ret;
}
