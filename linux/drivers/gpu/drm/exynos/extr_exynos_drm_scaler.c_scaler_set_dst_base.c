
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scaler_context {int dummy; } ;
struct exynos_drm_ipp_buffer {int * dma_addr; TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;





 int scaler_write (int ,unsigned int) ;

__attribute__((used)) static inline void scaler_set_dst_base(struct scaler_context *scaler,
 struct exynos_drm_ipp_buffer *dst_buf)
{
 static unsigned int bases[] = {
  128,
  130,
  129,
 };
 int i;

 for (i = 0; i < dst_buf->format->num_planes; ++i)
  scaler_write(dst_buf->dma_addr[i], bases[i]);
}
