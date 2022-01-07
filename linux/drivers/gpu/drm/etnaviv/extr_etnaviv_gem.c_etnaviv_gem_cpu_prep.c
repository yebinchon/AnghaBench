
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timespec {int dummy; } ;
struct etnaviv_gem_object {int flags; int last_cpu_prep_op; TYPE_1__* sgt; int lock; } ;
struct drm_gem_object {int resv; struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int nents; int sgl; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int ETNA_BO_CACHED ;
 int ETNA_PREP_NOSYNC ;
 int ETNA_PREP_WRITE ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dma_resv_test_signaled_rcu (int ,int) ;
 int dma_resv_wait_timeout_rcu (int ,int,int,unsigned long) ;
 int dma_sync_sg_for_cpu (int ,int ,int ,int ) ;
 void* etnaviv_gem_get_pages (struct etnaviv_gem_object*) ;
 int etnaviv_op_to_dma_dir (int) ;
 unsigned long etnaviv_timeout_to_jiffies (struct timespec*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

int etnaviv_gem_cpu_prep(struct drm_gem_object *obj, u32 op,
  struct timespec *timeout)
{
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 struct drm_device *dev = obj->dev;
 bool write = !!(op & ETNA_PREP_WRITE);
 int ret;

 if (!etnaviv_obj->sgt) {
  void *ret;

  mutex_lock(&etnaviv_obj->lock);
  ret = etnaviv_gem_get_pages(etnaviv_obj);
  mutex_unlock(&etnaviv_obj->lock);
  if (IS_ERR(ret))
   return PTR_ERR(ret);
 }

 if (op & ETNA_PREP_NOSYNC) {
  if (!dma_resv_test_signaled_rcu(obj->resv,
         write))
   return -EBUSY;
 } else {
  unsigned long remain = etnaviv_timeout_to_jiffies(timeout);

  ret = dma_resv_wait_timeout_rcu(obj->resv,
         write, 1, remain);
  if (ret <= 0)
   return ret == 0 ? -ETIMEDOUT : ret;
 }

 if (etnaviv_obj->flags & ETNA_BO_CACHED) {
  dma_sync_sg_for_cpu(dev->dev, etnaviv_obj->sgt->sgl,
        etnaviv_obj->sgt->nents,
        etnaviv_op_to_dma_dir(op));
  etnaviv_obj->last_cpu_prep_op = op;
 }

 return 0;
}
