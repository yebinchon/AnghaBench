
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gpu {int dummy; } ;


 int VIVS_HI_CLOCK_CONTROL ;
 int VIVS_HI_CLOCK_CONTROL_FSCALE_CMD_LOAD ;
 int gpu_write (struct etnaviv_gpu*,int ,int) ;

__attribute__((used)) static void etnaviv_gpu_load_clock(struct etnaviv_gpu *gpu, u32 clock)
{
 gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, clock |
    VIVS_HI_CLOCK_CONTROL_FSCALE_CMD_LOAD);
 gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, clock);
}
