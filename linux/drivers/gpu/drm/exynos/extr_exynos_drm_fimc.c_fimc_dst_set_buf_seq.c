
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int lock; int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,int) ;
 int EXYNOS_CIFCNTSEQ ;
 int FIMC_BUF_START ;
 int FIMC_BUF_STOP ;
 int fimc_mask_irq (struct fimc_context*,int) ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;
 int hweight32 (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fimc_dst_set_buf_seq(struct fimc_context *ctx, u32 buf_id,
  bool enqueue)
{
 unsigned long flags;
 u32 buf_num;
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "buf_id[%d]enqueu[%d]\n", buf_id, enqueue);

 spin_lock_irqsave(&ctx->lock, flags);

 cfg = fimc_read(ctx, EXYNOS_CIFCNTSEQ);

 if (enqueue)
  cfg |= (1 << buf_id);
 else
  cfg &= ~(1 << buf_id);

 fimc_write(ctx, cfg, EXYNOS_CIFCNTSEQ);

 buf_num = hweight32(cfg);

 if (enqueue && buf_num >= FIMC_BUF_START)
  fimc_mask_irq(ctx, 1);
 else if (!enqueue && buf_num <= FIMC_BUF_STOP)
  fimc_mask_irq(ctx, 0);

 spin_unlock_irqrestore(&ctx->lock, flags);
}
