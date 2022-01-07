
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int minor_features2; } ;
struct etnaviv_gpu {int base_rate_core; int freq_scale; int base_rate_shader; int clk_shader; int clk_core; TYPE_1__ identity; } ;


 int VIVS_HI_CLOCK_CONTROL ;
 int VIVS_HI_CLOCK_CONTROL_FSCALE_VAL (unsigned int) ;
 int VIVS_HI_CLOCK_CONTROL_FSCALE_VAL__MASK ;
 int chipMinorFeatures2_DYNAMIC_FREQUENCY_SCALING ;
 int clk_set_rate (int ,int) ;
 int etnaviv_gpu_load_clock (struct etnaviv_gpu*,int ) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;

__attribute__((used)) static void etnaviv_gpu_update_clock(struct etnaviv_gpu *gpu)
{
 if (gpu->identity.minor_features2 &
     chipMinorFeatures2_DYNAMIC_FREQUENCY_SCALING) {
  clk_set_rate(gpu->clk_core,
        gpu->base_rate_core >> gpu->freq_scale);
  clk_set_rate(gpu->clk_shader,
        gpu->base_rate_shader >> gpu->freq_scale);
 } else {
  unsigned int fscale = 1 << (6 - gpu->freq_scale);
  u32 clock = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);

  clock &= ~VIVS_HI_CLOCK_CONTROL_FSCALE_VAL__MASK;
  clock |= VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(fscale);
  etnaviv_gpu_load_clock(gpu, clock);
 }
}
