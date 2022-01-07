
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msm_gem_address_space {int dummy; } ;
struct drm_framebuffer {scalar_t__* offsets; int * obj; } ;


 scalar_t__ msm_gem_iova (int ,struct msm_gem_address_space*) ;

uint32_t msm_framebuffer_iova(struct drm_framebuffer *fb,
  struct msm_gem_address_space *aspace, int plane)
{
 if (!fb->obj[plane])
  return 0;
 return msm_gem_iova(fb->obj[plane], aspace) + fb->offsets[plane];
}
