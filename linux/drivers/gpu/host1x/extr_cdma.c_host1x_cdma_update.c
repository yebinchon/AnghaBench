
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_cdma {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_cdma_locked (struct host1x_cdma*) ;

void host1x_cdma_update(struct host1x_cdma *cdma)
{
 mutex_lock(&cdma->lock);
 update_cdma_locked(cdma);
 mutex_unlock(&cdma->lock);
}
