
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gpu {int freq_scale; scalar_t__ sec_mode; int dev; } ;


 int EBUSY ;
 scalar_t__ ETNA_SEC_KERNEL ;
 int VIVS_HI_CLOCK_CONTROL ;
 int VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS ;
 int VIVS_HI_CLOCK_CONTROL_FSCALE_VAL (unsigned int) ;
 int VIVS_HI_CLOCK_CONTROL_IDLE_2D ;
 int VIVS_HI_CLOCK_CONTROL_IDLE_3D ;
 int VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU ;
 int VIVS_HI_CLOCK_CONTROL_SOFT_RESET ;
 int VIVS_HI_IDLE_STATE ;
 int VIVS_HI_IDLE_STATE_FE ;
 int VIVS_MMUv2_AHB_CONTROL ;
 int VIVS_MMUv2_AHB_CONTROL_RESET ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,char*,char*,char*) ;
 int etnaviv_gpu_load_clock (struct etnaviv_gpu*,int) ;
 int etnaviv_gpu_update_clock (struct etnaviv_gpu*) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int etnaviv_hw_reset(struct etnaviv_gpu *gpu)
{
 u32 control, idle;
 unsigned long timeout;
 bool failed = 1;


 timeout = jiffies + msecs_to_jiffies(1000);

 while (time_is_after_jiffies(timeout)) {

  unsigned int fscale = 1 << (6 - gpu->freq_scale);
  control = VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(fscale);
  etnaviv_gpu_load_clock(gpu, control);


  control |= VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU;
  gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, control);

  if (gpu->sec_mode == ETNA_SEC_KERNEL) {
   gpu_write(gpu, VIVS_MMUv2_AHB_CONTROL,
             VIVS_MMUv2_AHB_CONTROL_RESET);
  } else {

   control |= VIVS_HI_CLOCK_CONTROL_SOFT_RESET;
   gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, control);
  }


  usleep_range(10, 20);


  control &= ~VIVS_HI_CLOCK_CONTROL_SOFT_RESET;
  gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, control);


  control &= ~VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU;
  gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, control);


  idle = gpu_read(gpu, VIVS_HI_IDLE_STATE);


  if ((idle & VIVS_HI_IDLE_STATE_FE) == 0) {
   dev_dbg(gpu->dev, "FE is not idle\n");
   continue;
  }


  control = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);


  if (((control & VIVS_HI_CLOCK_CONTROL_IDLE_3D) == 0) ||
      ((control & VIVS_HI_CLOCK_CONTROL_IDLE_2D) == 0)) {
   dev_dbg(gpu->dev, "GPU is not idle\n");
   continue;
  }


  control |= VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS;
  gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, control);

  failed = 0;
  break;
 }

 if (failed) {
  idle = gpu_read(gpu, VIVS_HI_IDLE_STATE);
  control = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);

  dev_err(gpu->dev, "GPU failed to reset: FE %sidle, 3D %sidle, 2D %sidle\n",
   idle & VIVS_HI_IDLE_STATE_FE ? "" : "not ",
   control & VIVS_HI_CLOCK_CONTROL_IDLE_3D ? "" : "not ",
   control & VIVS_HI_CLOCK_CONTROL_IDLE_2D ? "" : "not ");

  return -EBUSY;
 }


 etnaviv_gpu_update_clock(gpu);

 return 0;
}
