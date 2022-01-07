
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct msm_gem_object {int vram_node; } ;
struct TYPE_4__ {int lock; int mm; } ;
struct msm_drm_private {TYPE_2__ vram; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int ENOMEM ;
 struct page** ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int drm_mm_insert_node (int *,int ,int) ;
 int kvfree (struct page**) ;
 struct page** kvmalloc_array (int,int,int ) ;
 struct page* phys_to_page (int ) ;
 int physaddr (struct drm_gem_object*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static struct page **get_pages_vram(struct drm_gem_object *obj, int npages)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct msm_drm_private *priv = obj->dev->dev_private;
 dma_addr_t paddr;
 struct page **p;
 int ret, i;

 p = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (!p)
  return ERR_PTR(-ENOMEM);

 spin_lock(&priv->vram.lock);
 ret = drm_mm_insert_node(&priv->vram.mm, msm_obj->vram_node, npages);
 spin_unlock(&priv->vram.lock);
 if (ret) {
  kvfree(p);
  return ERR_PTR(ret);
 }

 paddr = physaddr(obj);
 for (i = 0; i < npages; i++) {
  p[i] = phys_to_page(paddr);
  paddr += PAGE_SIZE;
 }

 return p;
}
