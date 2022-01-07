
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_event {int dummy; } ;


 int ETNA_PM_PROCESS_PRE ;
 int VIVS_HI_CLOCK_CONTROL ;
 int VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS ;
 int VIVS_PM_POWER_CONTROLS ;
 int VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,int ) ;
 int sync_point_perfmon_sample (struct etnaviv_gpu*,struct etnaviv_event*,int ) ;

__attribute__((used)) static void sync_point_perfmon_sample_pre(struct etnaviv_gpu *gpu,
 struct etnaviv_event *event)
{
 u32 val;


 val = gpu_read(gpu, VIVS_PM_POWER_CONTROLS);
 val &= ~VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING;
 gpu_write(gpu, VIVS_PM_POWER_CONTROLS, val);


 val = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);
 val &= ~VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS;
 gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, val);

 sync_point_perfmon_sample(gpu, event, ETNA_PM_PROCESS_PRE);
}
