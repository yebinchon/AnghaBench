
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,int,int) ;
 int GSC_IRQ ;
 int GSC_IRQ_ENABLE ;
 int GSC_IRQ_FRMDONE_MASK ;
 int GSC_IRQ_OR_MASK ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_handle_irq(struct gsc_context *ctx, bool enable,
  bool overflow, bool done)
{
 u32 cfg;

 DRM_DEV_DEBUG_KMS(ctx->dev, "enable[%d]overflow[%d]level[%d]\n",
     enable, overflow, done);

 cfg = gsc_read(GSC_IRQ);
 cfg |= (GSC_IRQ_OR_MASK | GSC_IRQ_FRMDONE_MASK);

 if (enable)
  cfg |= GSC_IRQ_ENABLE;
 else
  cfg &= ~GSC_IRQ_ENABLE;

 if (overflow)
  cfg &= ~GSC_IRQ_OR_MASK;
 else
  cfg |= GSC_IRQ_OR_MASK;

 if (done)
  cfg &= ~GSC_IRQ_FRMDONE_MASK;
 else
  cfg |= GSC_IRQ_FRMDONE_MASK;

 gsc_write(cfg, GSC_IRQ);
}
