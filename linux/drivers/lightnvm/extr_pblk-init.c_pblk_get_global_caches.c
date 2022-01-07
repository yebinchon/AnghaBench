
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;
 int kref_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ pblk_caches ;
 int pblk_create_global_caches () ;

__attribute__((used)) static int pblk_get_global_caches(void)
{
 int ret = 0;

 mutex_lock(&pblk_caches.mutex);

 if (kref_get_unless_zero(&pblk_caches.kref))
  goto out;

 ret = pblk_create_global_caches();
 if (!ret)
  kref_init(&pblk_caches.kref);

out:
 mutex_unlock(&pblk_caches.mutex);
 return ret;
}
