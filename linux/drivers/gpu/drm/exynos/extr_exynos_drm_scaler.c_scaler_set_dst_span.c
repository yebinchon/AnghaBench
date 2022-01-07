
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scaler_context {int dummy; } ;
struct TYPE_4__ {int* pitch; } ;
struct exynos_drm_ipp_buffer {TYPE_2__ buf; TYPE_1__* format; } ;
struct TYPE_3__ {int* cpp; int num_planes; } ;


 int SCALER_DST_SPAN ;
 int SCALER_DST_SPAN_SET_C_SPAN (int) ;
 int SCALER_DST_SPAN_SET_Y_SPAN (int) ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_dst_span(struct scaler_context *scaler,
 struct exynos_drm_ipp_buffer *dst_buf)
{
 u32 val;

 val = SCALER_DST_SPAN_SET_Y_SPAN(dst_buf->buf.pitch[0] /
  dst_buf->format->cpp[0]);

 if (dst_buf->format->num_planes > 1)
  val |= SCALER_DST_SPAN_SET_C_SPAN(dst_buf->buf.pitch[1]);

 scaler_write(val, SCALER_DST_SPAN);
}
