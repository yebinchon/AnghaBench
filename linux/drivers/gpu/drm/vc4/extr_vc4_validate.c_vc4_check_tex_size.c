
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vc4_exec_info {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct drm_gem_cma_object {TYPE_1__ base; } ;


 int DRM_DEBUG (char*,int,...) ;



 int round_up (int,int) ;
 int utile_height (int) ;
 int utile_width (int) ;

bool
vc4_check_tex_size(struct vc4_exec_info *exec, struct drm_gem_cma_object *fbo,
     uint32_t offset, uint8_t tiling_format,
     uint32_t width, uint32_t height, uint8_t cpp)
{
 uint32_t aligned_width, aligned_height, stride, size;
 uint32_t utile_w = utile_width(cpp);
 uint32_t utile_h = utile_height(cpp);
 if (width > 4096 || height > 4096) {
  DRM_DEBUG("Surface dimensions (%d,%d) too large",
     width, height);
  return 0;
 }

 switch (tiling_format) {
 case 130:
  aligned_width = round_up(width, utile_w);
  aligned_height = height;
  break;
 case 128:
  aligned_width = round_up(width, utile_w * 8);
  aligned_height = round_up(height, utile_h * 8);
  break;
 case 129:
  aligned_width = round_up(width, utile_w);
  aligned_height = round_up(height, utile_h);
  break;
 default:
  DRM_DEBUG("buffer tiling %d unsupported\n", tiling_format);
  return 0;
 }

 stride = aligned_width * cpp;
 size = stride * aligned_height;

 if (size + offset < size ||
     size + offset > fbo->base.size) {
  DRM_DEBUG("Overflow in %dx%d (%dx%d) fbo size (%d + %d > %zd)\n",
     width, height,
     aligned_width, aligned_height,
     size, offset, fbo->base.size);
  return 0;
 }

 return 1;
}
