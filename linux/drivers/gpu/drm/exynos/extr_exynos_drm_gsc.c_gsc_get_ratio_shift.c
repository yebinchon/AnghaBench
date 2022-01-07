
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,int) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;

__attribute__((used)) static int gsc_get_ratio_shift(struct gsc_context *ctx, u32 src, u32 dst,
          u32 *ratio)
{
 DRM_DEV_DEBUG_KMS(ctx->dev, "src[%d]dst[%d]\n", src, dst);

 if (src >= dst * 8) {
  DRM_DEV_ERROR(ctx->dev, "failed to make ratio and shift.\n");
  return -EINVAL;
 } else if (src >= dst * 4)
  *ratio = 4;
 else if (src >= dst * 2)
  *ratio = 2;
 else
  *ratio = 1;

 return 0;
}
