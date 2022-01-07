
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int dummy; } ;
struct exynos_drm_ipp_buffer {int * dma_addr; } ;


 int EXYNOS_CIOCBSA (int ) ;
 int EXYNOS_CIOCRSA (int ) ;
 int EXYNOS_CIOYSA (int ) ;
 int fimc_dst_set_buf_seq (struct fimc_context*,int ,int) ;
 int fimc_write (struct fimc_context*,int ,int ) ;

__attribute__((used)) static void fimc_dst_set_addr(struct fimc_context *ctx,
        struct exynos_drm_ipp_buffer *buf)
{
 fimc_write(ctx, buf->dma_addr[0], EXYNOS_CIOYSA(0));
 fimc_write(ctx, buf->dma_addr[1], EXYNOS_CIOCBSA(0));
 fimc_write(ctx, buf->dma_addr[2], EXYNOS_CIOCRSA(0));

 fimc_dst_set_buf_seq(ctx, 0, 1);
}
