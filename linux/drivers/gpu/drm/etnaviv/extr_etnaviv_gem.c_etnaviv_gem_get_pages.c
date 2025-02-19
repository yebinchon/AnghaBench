
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int size; struct drm_device* dev; } ;
struct etnaviv_gem_object {struct page** pages; struct sg_table* sgt; TYPE_2__ base; TYPE_1__* ops; int lock; } ;
struct drm_device {int dev; } ;
struct TYPE_3__ {int (* get_pages ) (struct etnaviv_gem_object*) ;} ;


 struct page** ERR_CAST (struct sg_table*) ;
 struct page** ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct sg_table*) ;
 int dev_err (int ,char*,int ) ;
 struct sg_table* drm_prime_pages_to_sg (struct page**,int) ;
 int etnaviv_gem_scatter_map (struct etnaviv_gem_object*) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct etnaviv_gem_object*) ;

struct page **etnaviv_gem_get_pages(struct etnaviv_gem_object *etnaviv_obj)
{
 int ret;

 lockdep_assert_held(&etnaviv_obj->lock);

 if (!etnaviv_obj->pages) {
  ret = etnaviv_obj->ops->get_pages(etnaviv_obj);
  if (ret < 0)
   return ERR_PTR(ret);
 }

 if (!etnaviv_obj->sgt) {
  struct drm_device *dev = etnaviv_obj->base.dev;
  int npages = etnaviv_obj->base.size >> PAGE_SHIFT;
  struct sg_table *sgt;

  sgt = drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
  if (IS_ERR(sgt)) {
   dev_err(dev->dev, "failed to allocate sgt: %ld\n",
    PTR_ERR(sgt));
   return ERR_CAST(sgt);
  }

  etnaviv_obj->sgt = sgt;

  etnaviv_gem_scatter_map(etnaviv_obj);
 }

 return etnaviv_obj->pages;
}
