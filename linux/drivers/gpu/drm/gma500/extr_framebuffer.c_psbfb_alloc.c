
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtt_range {int gem; } ;
struct drm_device {int dummy; } ;


 int PAGE_SIZE ;
 int drm_gem_private_object_init (struct drm_device*,int *,int) ;
 struct gtt_range* psb_gtt_alloc_range (struct drm_device*,int,char*,int,int ) ;

__attribute__((used)) static struct gtt_range *psbfb_alloc(struct drm_device *dev, int aligned_size)
{
 struct gtt_range *backing;

 backing = psb_gtt_alloc_range(dev, aligned_size, "fb", 1, PAGE_SIZE);
 if (backing) {
  drm_gem_private_object_init(dev, &backing->gem, aligned_size);
  return backing;
 }
 return ((void*)0);
}
