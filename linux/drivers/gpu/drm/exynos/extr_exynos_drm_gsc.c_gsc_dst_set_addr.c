
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dummy; } ;
struct exynos_drm_ipp_buffer {int * dma_addr; } ;


 int GSC_OUT_BASE_ADDR_CB (int ) ;
 int GSC_OUT_BASE_ADDR_CR (int ) ;
 int GSC_OUT_BASE_ADDR_Y (int ) ;
 int gsc_dst_set_buf_seq (struct gsc_context*,int ,int) ;
 int gsc_write (int ,int ) ;

__attribute__((used)) static void gsc_dst_set_addr(struct gsc_context *ctx,
        u32 buf_id, struct exynos_drm_ipp_buffer *buf)
{

 gsc_write(buf->dma_addr[0], GSC_OUT_BASE_ADDR_Y(buf_id));
 gsc_write(buf->dma_addr[1], GSC_OUT_BASE_ADDR_CB(buf_id));
 gsc_write(buf->dma_addr[2], GSC_OUT_BASE_ADDR_CR(buf_id));

 gsc_dst_set_buf_seq(ctx, buf_id, 1);
}
