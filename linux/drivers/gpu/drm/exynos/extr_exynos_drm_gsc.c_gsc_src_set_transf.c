
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int rotation; } ;


 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;




 unsigned int DRM_MODE_ROTATE_MASK ;
 int GSC_IN_CON ;
 int GSC_IN_ROT_180 ;
 int GSC_IN_ROT_270 ;
 int GSC_IN_ROT_90 ;
 int GSC_IN_ROT_MASK ;
 int GSC_IN_ROT_XFLIP ;
 int GSC_IN_ROT_YFLIP ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_src_set_transf(struct gsc_context *ctx, unsigned int rotation)
{
 unsigned int degree = rotation & DRM_MODE_ROTATE_MASK;
 u32 cfg;

 cfg = gsc_read(GSC_IN_CON);
 cfg &= ~GSC_IN_ROT_MASK;

 switch (degree) {
 case 131:
  if (rotation & DRM_MODE_REFLECT_X)
   cfg |= GSC_IN_ROT_XFLIP;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg |= GSC_IN_ROT_YFLIP;
  break;
 case 128:
  cfg |= GSC_IN_ROT_90;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg |= GSC_IN_ROT_XFLIP;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg |= GSC_IN_ROT_YFLIP;
  break;
 case 130:
  cfg |= GSC_IN_ROT_180;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg &= ~GSC_IN_ROT_XFLIP;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg &= ~GSC_IN_ROT_YFLIP;
  break;
 case 129:
  cfg |= GSC_IN_ROT_270;
  if (rotation & DRM_MODE_REFLECT_X)
   cfg &= ~GSC_IN_ROT_XFLIP;
  if (rotation & DRM_MODE_REFLECT_Y)
   cfg &= ~GSC_IN_ROT_YFLIP;
  break;
 }

 gsc_write(cfg, GSC_IN_CON);

 ctx->rotation = (cfg & GSC_IN_ROT_90) ? 1 : 0;
}
