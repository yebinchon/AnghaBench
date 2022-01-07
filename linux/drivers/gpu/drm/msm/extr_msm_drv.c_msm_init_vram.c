
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {unsigned long end; unsigned long start; } ;
struct TYPE_5__ {unsigned long size; scalar_t__ paddr; int lock; int mm; } ;
struct msm_drm_private {TYPE_1__ vram; } ;
struct drm_device {TYPE_2__* dev; struct msm_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int of_node; } ;


 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 unsigned long DMA_ATTR_WRITE_COMBINE ;
 int DRM_DEV_ERROR (TYPE_2__*,char*) ;
 int DRM_DEV_INFO (TYPE_2__*,char*,int ,int ) ;
 int DRM_INFO (char*,unsigned long,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_SHIFT ;
 void* dma_alloc_attrs (TYPE_2__*,unsigned long,scalar_t__*,int ,unsigned long) ;
 int drm_mm_init (int *,int ,unsigned long) ;
 unsigned long memparse (int ,int *) ;
 int msm_use_mmu (struct drm_device*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int spin_lock_init (int *) ;
 int vram ;

__attribute__((used)) static int msm_init_vram(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct device_node *node;
 unsigned long size = 0;
 int ret = 0;
 node = of_parse_phandle(dev->dev->of_node, "memory-region", 0);
 if (node) {
  struct resource r;
  ret = of_address_to_resource(node, 0, &r);
  of_node_put(node);
  if (ret)
   return ret;
  size = r.end - r.start;
  DRM_INFO("using VRAM carveout: %lx@%pa\n", size, &r.start);





 } else if (!msm_use_mmu(dev)) {
  DRM_INFO("using %s VRAM carveout\n", vram);
  size = memparse(vram, ((void*)0));
 }

 if (size) {
  unsigned long attrs = 0;
  void *p;

  priv->vram.size = size;

  drm_mm_init(&priv->vram.mm, 0, (size >> PAGE_SHIFT) - 1);
  spin_lock_init(&priv->vram.lock);

  attrs |= DMA_ATTR_NO_KERNEL_MAPPING;
  attrs |= DMA_ATTR_WRITE_COMBINE;




  p = dma_alloc_attrs(dev->dev, size,
    &priv->vram.paddr, GFP_KERNEL, attrs);
  if (!p) {
   DRM_DEV_ERROR(dev->dev, "failed to allocate VRAM\n");
   priv->vram.paddr = 0;
   return -ENOMEM;
  }

  DRM_DEV_INFO(dev->dev, "VRAM: %08x->%08x\n",
    (uint32_t)priv->vram.paddr,
    (uint32_t)(priv->vram.paddr + size));
 }

 return ret;
}
