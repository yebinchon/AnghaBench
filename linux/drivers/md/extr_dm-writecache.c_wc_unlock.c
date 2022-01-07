
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void wc_unlock(struct dm_writecache *wc)
{
 mutex_unlock(&wc->lock);
}
