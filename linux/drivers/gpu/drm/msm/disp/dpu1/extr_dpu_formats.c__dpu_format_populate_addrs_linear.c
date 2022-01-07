
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_address_space {int dummy; } ;
struct drm_framebuffer {scalar_t__* pitches; } ;
struct dpu_hw_fmt_layout {unsigned int num_planes; scalar_t__* plane_pitch; int * plane_addr; } ;


 int DRM_ERROR (char*,...) ;
 int EFAULT ;
 int EINVAL ;
 int msm_framebuffer_iova (struct drm_framebuffer*,struct msm_gem_address_space*,unsigned int) ;

__attribute__((used)) static int _dpu_format_populate_addrs_linear(
  struct msm_gem_address_space *aspace,
  struct drm_framebuffer *fb,
  struct dpu_hw_fmt_layout *layout)
{
 unsigned int i;


 for (i = 0; i < layout->num_planes; ++i) {
  if (layout->plane_pitch[i] > fb->pitches[i]) {
   DRM_ERROR("plane %u expected pitch %u, fb %u\n",
    i, layout->plane_pitch[i], fb->pitches[i]);
   return -EINVAL;
  }
 }


 for (i = 0; i < layout->num_planes; ++i) {
  if (aspace)
   layout->plane_addr[i] =
    msm_framebuffer_iova(fb, aspace, i);
  if (!layout->plane_addr[i]) {
   DRM_ERROR("failed to retrieve base addr\n");
   return -EFAULT;
  }
 }

 return 0;
}
