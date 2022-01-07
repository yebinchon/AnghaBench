
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dummy; } ;


 int GSC_IN_BASE_ADDR_CB_MASK ;
 int GSC_IN_BASE_ADDR_CR_MASK ;
 int GSC_IN_BASE_ADDR_Y_MASK ;
 int gsc_read (int ) ;
 int gsc_write (int,int ) ;

__attribute__((used)) static void gsc_src_set_buf_seq(struct gsc_context *ctx, u32 buf_id,
          bool enqueue)
{
 bool masked = !enqueue;
 u32 cfg;
 u32 mask = 0x00000001 << buf_id;


 cfg = gsc_read(GSC_IN_BASE_ADDR_Y_MASK);


 cfg &= ~mask;
 cfg |= masked << buf_id;
 gsc_write(cfg, GSC_IN_BASE_ADDR_Y_MASK);
 gsc_write(cfg, GSC_IN_BASE_ADDR_CB_MASK);
 gsc_write(cfg, GSC_IN_BASE_ADDR_CR_MASK);
}
