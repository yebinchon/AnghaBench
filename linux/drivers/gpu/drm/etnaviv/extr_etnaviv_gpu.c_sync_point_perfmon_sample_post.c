
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_perfmon_request {int sequence; int * bo_vma; } ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_gem_submit {unsigned int nr_pmrs; struct etnaviv_perfmon_request* pmrs; } ;
struct etnaviv_event {struct etnaviv_gem_submit* submit; } ;


 int ETNA_PM_PROCESS_POST ;
 int VIVS_HI_CLOCK_CONTROL ;
 int VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS ;
 int VIVS_PM_POWER_CONTROLS ;
 int VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,int ) ;
 int sync_point_perfmon_sample (struct etnaviv_gpu*,struct etnaviv_event*,int ) ;

__attribute__((used)) static void sync_point_perfmon_sample_post(struct etnaviv_gpu *gpu,
 struct etnaviv_event *event)
{
 const struct etnaviv_gem_submit *submit = event->submit;
 unsigned int i;
 u32 val;

 sync_point_perfmon_sample(gpu, event, ETNA_PM_PROCESS_POST);

 for (i = 0; i < submit->nr_pmrs; i++) {
  const struct etnaviv_perfmon_request *pmr = submit->pmrs + i;

  *pmr->bo_vma = pmr->sequence;
 }


 val = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);
 val |= VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS;
 gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, val);


 val = gpu_read(gpu, VIVS_PM_POWER_CONTROLS);
 val |= VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING;
 gpu_write(gpu, VIVS_PM_POWER_CONTROLS, val);
}
