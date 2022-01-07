
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gem_address_space {int dummy; } ;
struct drm_framebuffer {int * obj; TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;


 int msm_gem_unpin_iova (int ,struct msm_gem_address_space*) ;

void msm_framebuffer_cleanup(struct drm_framebuffer *fb,
  struct msm_gem_address_space *aspace)
{
 int i, n = fb->format->num_planes;

 for (i = 0; i < n; i++)
  msm_gem_unpin_iova(fb->obj[i], aspace);
}
