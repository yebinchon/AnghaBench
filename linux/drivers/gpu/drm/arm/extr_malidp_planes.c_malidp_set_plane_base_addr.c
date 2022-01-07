
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct drm_plane {int state; } ;
struct malidp_plane {int hwdev; TYPE_1__* layer; struct drm_plane base; } ;
struct drm_gem_cma_object {int paddr; } ;
struct drm_framebuffer {scalar_t__ modifier; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ ptr; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_fb_cma_get_gem_addr (struct drm_framebuffer*,int ,int) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int) ;
 int lower_32_bits (int ) ;
 int malidp_hw_write (int ,int ,scalar_t__) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void malidp_set_plane_base_addr(struct drm_framebuffer *fb,
           struct malidp_plane *mp,
           int plane_index)
{
 dma_addr_t paddr;
 u16 ptr;
 struct drm_plane *plane = &mp->base;
 bool afbc = fb->modifier ? 1 : 0;

 ptr = mp->layer->ptr + (plane_index << 4);
 if (!afbc) {
  paddr = drm_fb_cma_get_gem_addr(fb, plane->state,
      plane_index);
 } else {
  struct drm_gem_cma_object *obj;

  obj = drm_fb_cma_get_gem_obj(fb, plane_index);

  if (WARN_ON(!obj))
   return;
  paddr = obj->paddr;
 }

 malidp_hw_write(mp->hwdev, lower_32_bits(paddr), ptr);
 malidp_hw_write(mp->hwdev, upper_32_bits(paddr), ptr + 4);
}
