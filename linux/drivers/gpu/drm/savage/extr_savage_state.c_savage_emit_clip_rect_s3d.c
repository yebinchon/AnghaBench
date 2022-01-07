
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_clip_rect {scalar_t__ y2; scalar_t__ x2; scalar_t__ y1; scalar_t__ x1; } ;
struct TYPE_5__ {int new_scstart; int new_scend; int scstart; int scend; } ;
struct TYPE_6__ {TYPE_1__ s3d; } ;
struct TYPE_7__ {int waiting; TYPE_2__ state; } ;
typedef TYPE_3__ drm_savage_private_t ;


 int BCI_CMD_WAIT ;
 int BCI_CMD_WAIT_3D ;
 int BEGIN_DMA (int) ;
 int DMA_COMMIT () ;
 int DMA_LOCALS ;
 int DMA_SET_REGISTERS (int ,int) ;
 int DMA_WRITE (int) ;
 int SAVAGE_SCISSOR_MASK_S3D ;
 int SAVAGE_SCSTART_S3D ;

void savage_emit_clip_rect_s3d(drm_savage_private_t * dev_priv,
          const struct drm_clip_rect * pbox)
{
 uint32_t scstart = dev_priv->state.s3d.new_scstart;
 uint32_t scend = dev_priv->state.s3d.new_scend;
 scstart = (scstart & ~SAVAGE_SCISSOR_MASK_S3D) |
     ((uint32_t) pbox->x1 & 0x000007ff) |
     (((uint32_t) pbox->y1 << 16) & 0x07ff0000);
 scend = (scend & ~SAVAGE_SCISSOR_MASK_S3D) |
     (((uint32_t) pbox->x2 - 1) & 0x000007ff) |
     ((((uint32_t) pbox->y2 - 1) << 16) & 0x07ff0000);
 if (scstart != dev_priv->state.s3d.scstart ||
     scend != dev_priv->state.s3d.scend) {
  DMA_LOCALS;
  BEGIN_DMA(4);
  DMA_WRITE(BCI_CMD_WAIT | BCI_CMD_WAIT_3D);
  DMA_SET_REGISTERS(SAVAGE_SCSTART_S3D, 2);
  DMA_WRITE(scstart);
  DMA_WRITE(scend);
  dev_priv->state.s3d.scstart = scstart;
  dev_priv->state.s3d.scend = scend;
  dev_priv->waiting = 1;
  DMA_COMMIT();
 }
}
