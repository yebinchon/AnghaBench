
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ plane; } ;
struct mxsfb_drm_private {TYPE_3__ pipe; } ;
struct drm_gem_cma_object {int paddr; } ;
struct drm_framebuffer {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;


 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;

__attribute__((used)) static dma_addr_t mxsfb_get_fb_paddr(struct mxsfb_drm_private *mxsfb)
{
 struct drm_framebuffer *fb = mxsfb->pipe.plane.state->fb;
 struct drm_gem_cma_object *gem;

 if (!fb)
  return 0;

 gem = drm_fb_cma_get_gem_obj(fb, 0);
 if (!gem)
  return 0;

 return gem->paddr;
}
