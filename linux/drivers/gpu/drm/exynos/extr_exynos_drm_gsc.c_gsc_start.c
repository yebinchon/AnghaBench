
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int sc; } ;


 int GSC_ENABLE ;
 int GSC_ENABLE_CLK_GATE_MODE_MASK ;
 int GSC_ENABLE_ON ;
 int GSC_ENABLE_ON_CLEAR_MASK ;
 int GSC_ENABLE_ON_CLEAR_ONESHOT ;
 int GSC_IN_CON ;
 int GSC_IN_LOCAL_SEL_MASK ;
 int GSC_IN_PATH_MASK ;
 int GSC_IN_PATH_MEMORY ;
 int GSC_OUT_CON ;
 int GSC_OUT_PATH_MEMORY ;
 int gsc_handle_irq (struct gsc_context*,int,int,int) ;
 int gsc_read (int ) ;
 int gsc_set_scaler (struct gsc_context*,int *) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_start(struct gsc_context *ctx)
{
 u32 cfg;

 gsc_handle_irq(ctx, 1, 0, 1);


 cfg = gsc_read(GSC_ENABLE);
 cfg &= ~(GSC_ENABLE_ON_CLEAR_MASK |
  GSC_ENABLE_CLK_GATE_MODE_MASK);
 cfg |= GSC_ENABLE_ON_CLEAR_ONESHOT;
 gsc_write(cfg, GSC_ENABLE);


 cfg = gsc_read(GSC_IN_CON);
 cfg &= ~(GSC_IN_PATH_MASK | GSC_IN_LOCAL_SEL_MASK);
 cfg |= GSC_IN_PATH_MEMORY;
 gsc_write(cfg, GSC_IN_CON);


 cfg = gsc_read(GSC_OUT_CON);
 cfg |= GSC_OUT_PATH_MEMORY;
 gsc_write(cfg, GSC_OUT_CON);

 gsc_set_scaler(ctx, &ctx->sc);

 cfg = gsc_read(GSC_ENABLE);
 cfg |= GSC_ENABLE_ON;
 gsc_write(cfg, GSC_ENABLE);
}
