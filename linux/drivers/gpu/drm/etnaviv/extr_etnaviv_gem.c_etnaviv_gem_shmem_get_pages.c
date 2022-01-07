
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct etnaviv_gem_object {struct page** pages; TYPE_1__ base; } ;
struct drm_device {int dev; } ;


 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 int dev_dbg (int ,char*,int) ;
 struct page** drm_gem_get_pages (TYPE_1__*) ;

__attribute__((used)) static int etnaviv_gem_shmem_get_pages(struct etnaviv_gem_object *etnaviv_obj)
{
 struct drm_device *dev = etnaviv_obj->base.dev;
 struct page **p = drm_gem_get_pages(&etnaviv_obj->base);

 if (IS_ERR(p)) {
  dev_dbg(dev->dev, "could not get pages: %ld\n", PTR_ERR(p));
  return PTR_ERR(p);
 }

 etnaviv_obj->pages = p;

 return 0;
}
