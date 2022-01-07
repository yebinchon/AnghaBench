
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_intel_overlay_put_image {int src_scan_height; int dst_height; int src_scan_width; int dst_width; } ;


 int EINVAL ;

__attribute__((used)) static int check_overlay_scaling(struct drm_intel_overlay_put_image *rec)
{
 u32 tmp;


 tmp = ((rec->src_scan_height << 16) / rec->dst_height) >> 16;
 if (tmp > 7)
  return -EINVAL;

 tmp = ((rec->src_scan_width << 16) / rec->dst_width) >> 16;
 if (tmp > 7)
  return -EINVAL;

 return 0;
}
