
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int kref; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ pblk_caches ;
 int pblk_destroy_global_caches ;

__attribute__((used)) static void pblk_put_global_caches(void)
{
 mutex_lock(&pblk_caches.mutex);
 kref_put(&pblk_caches.kref, pblk_destroy_global_caches);
 mutex_unlock(&pblk_caches.mutex);
}
