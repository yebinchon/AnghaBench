
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fimd_context {TYPE_1__* crtc; int irq_flags; int wait_vsync_queue; int wait_vsync_event; int dev; int win_updated; int drm_dev; TYPE_2__* driver_data; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct TYPE_4__ {scalar_t__ trg_type; } ;
struct TYPE_3__ {int base; } ;


 scalar_t__ I80_HW_TRG ;
 scalar_t__ atomic_add_unless (int *,int,int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int drm_crtc_handle_vblank (int *) ;
 int fimd_trigger (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void fimd_te_handler(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;
 u32 trg_type = ctx->driver_data->trg_type;


 if (!ctx->drm_dev)
  return;

 if (trg_type == I80_HW_TRG)
  goto out;





 if (atomic_add_unless(&ctx->win_updated, -1, 0))
  fimd_trigger(ctx->dev);

out:

 if (atomic_read(&ctx->wait_vsync_event)) {
  atomic_set(&ctx->wait_vsync_event, 0);
  wake_up(&ctx->wait_vsync_queue);
 }

 if (test_bit(0, &ctx->irq_flags))
  drm_crtc_handle_vblank(&ctx->crtc->base);
}
