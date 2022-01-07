
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct gsc_scaler {scalar_t__ range; } ;
struct gsc_context {struct gsc_scaler sc; } ;
struct TYPE_6__ {scalar_t__ w; int h; int y; int x; } ;
struct TYPE_5__ {int* pitch; int height; } ;
struct exynos_drm_ipp_buffer {TYPE_3__ rect; TYPE_2__ buf; TYPE_1__* format; } ;
struct TYPE_4__ {int* cpp; } ;


 int GSC_CROPPED_HEIGHT (int ) ;
 int GSC_CROPPED_SIZE ;
 int GSC_CROPPED_WIDTH (scalar_t__) ;
 int GSC_IN_CON ;
 int GSC_IN_RGB_HD_NARROW ;
 int GSC_IN_RGB_HD_WIDE ;
 int GSC_IN_RGB_SD_NARROW ;
 int GSC_IN_RGB_SD_WIDE ;
 int GSC_IN_RGB_TYPE_MASK ;
 int GSC_SRCIMG_HEIGHT (int ) ;
 int GSC_SRCIMG_HEIGHT_MASK ;
 int GSC_SRCIMG_OFFSET ;
 int GSC_SRCIMG_OFFSET_X (int ) ;
 int GSC_SRCIMG_OFFSET_Y (int ) ;
 int GSC_SRCIMG_SIZE ;
 int GSC_SRCIMG_WIDTH (int) ;
 int GSC_SRCIMG_WIDTH_MASK ;
 scalar_t__ GSC_WIDTH_ITU_709 ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_src_set_size(struct gsc_context *ctx,
        struct exynos_drm_ipp_buffer *buf)
{
 struct gsc_scaler *sc = &ctx->sc;
 u32 cfg;


 cfg = (GSC_SRCIMG_OFFSET_X(buf->rect.x) |
  GSC_SRCIMG_OFFSET_Y(buf->rect.y));
 gsc_write(cfg, GSC_SRCIMG_OFFSET);


 cfg = (GSC_CROPPED_WIDTH(buf->rect.w) |
  GSC_CROPPED_HEIGHT(buf->rect.h));
 gsc_write(cfg, GSC_CROPPED_SIZE);


 cfg = gsc_read(GSC_SRCIMG_SIZE);
 cfg &= ~(GSC_SRCIMG_HEIGHT_MASK |
  GSC_SRCIMG_WIDTH_MASK);

 cfg |= (GSC_SRCIMG_WIDTH(buf->buf.pitch[0] / buf->format->cpp[0]) |
  GSC_SRCIMG_HEIGHT(buf->buf.height));

 gsc_write(cfg, GSC_SRCIMG_SIZE);

 cfg = gsc_read(GSC_IN_CON);
 cfg &= ~GSC_IN_RGB_TYPE_MASK;

 if (buf->rect.w >= GSC_WIDTH_ITU_709)
  if (sc->range)
   cfg |= GSC_IN_RGB_HD_WIDE;
  else
   cfg |= GSC_IN_RGB_HD_NARROW;
 else
  if (sc->range)
   cfg |= GSC_IN_RGB_SD_WIDE;
  else
   cfg |= GSC_IN_RGB_SD_NARROW;

 gsc_write(cfg, GSC_IN_CON);
}
