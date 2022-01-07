
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dummy; } ;


 scalar_t__ GSC_BUF_START ;
 scalar_t__ GSC_BUF_STOP ;
 int GSC_OUT_BASE_ADDR_CB_MASK ;
 int GSC_OUT_BASE_ADDR_CR_MASK ;
 int GSC_OUT_BASE_ADDR_Y_MASK ;
 scalar_t__ gsc_dst_get_buf_seq (struct gsc_context*) ;
 int gsc_handle_irq (struct gsc_context*,int,int,int) ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_dst_set_buf_seq(struct gsc_context *ctx, u32 buf_id,
    bool enqueue)
{
 bool masked = !enqueue;
 u32 cfg;
 u32 mask = 0x00000001 << buf_id;


 cfg = gsc_read(GSC_OUT_BASE_ADDR_Y_MASK);


 cfg &= ~mask;
 cfg |= masked << buf_id;
 gsc_write(cfg, GSC_OUT_BASE_ADDR_Y_MASK);
 gsc_write(cfg, GSC_OUT_BASE_ADDR_CB_MASK);
 gsc_write(cfg, GSC_OUT_BASE_ADDR_CR_MASK);


 if (enqueue && gsc_dst_get_buf_seq(ctx) >= GSC_BUF_START)
  gsc_handle_irq(ctx, 1, 0, 1);


 if (!enqueue && gsc_dst_get_buf_seq(ctx) <= GSC_BUF_STOP)
  gsc_handle_irq(ctx, 0, 0, 1);
}
