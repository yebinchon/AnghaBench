
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int size; scalar_t__ enabled; } ;
struct TYPE_4__ {int crtc_clock; } ;
struct TYPE_5__ {TYPE_1__ adjusted_mode; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_3__ pch_pfit; TYPE_2__ base; } ;


 scalar_t__ WARN_ON (int) ;
 int div_u64 (int ,int) ;
 int mul_u32_u32 (int,int) ;

__attribute__((used)) static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *pipe_config)
{
 u32 pixel_rate;

 pixel_rate = pipe_config->base.adjusted_mode.crtc_clock;






 if (pipe_config->pch_pfit.enabled) {
  u64 pipe_w, pipe_h, pfit_w, pfit_h;
  u32 pfit_size = pipe_config->pch_pfit.size;

  pipe_w = pipe_config->pipe_src_w;
  pipe_h = pipe_config->pipe_src_h;

  pfit_w = (pfit_size >> 16) & 0xFFFF;
  pfit_h = pfit_size & 0xFFFF;
  if (pipe_w < pfit_w)
   pipe_w = pfit_w;
  if (pipe_h < pfit_h)
   pipe_h = pfit_h;

  if (WARN_ON(!pfit_w || !pfit_h))
   return pixel_rate;

  pixel_rate = div_u64(mul_u32_u32(pixel_rate, pipe_w * pipe_h),
         pfit_w * pfit_h);
 }

 return pixel_rate;
}
