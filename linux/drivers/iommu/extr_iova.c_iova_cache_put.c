
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 int iova_cache ;
 int iova_cache_mutex ;
 int iova_cache_users ;
 int kmem_cache_destroy (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iova_cache_put(void)
{
 mutex_lock(&iova_cache_mutex);
 if (WARN_ON(!iova_cache_users)) {
  mutex_unlock(&iova_cache_mutex);
  return;
 }
 iova_cache_users--;
 if (!iova_cache_users)
  kmem_cache_destroy(iova_cache);
 mutex_unlock(&iova_cache_mutex);
}
