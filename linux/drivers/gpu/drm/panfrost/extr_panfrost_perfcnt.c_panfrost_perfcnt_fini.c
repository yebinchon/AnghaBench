
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int GPU_PERFCNT_CFG ;
 int GPU_PERFCNT_CFG_MODE (int ) ;
 int GPU_PERFCNT_CFG_MODE_OFF ;
 int GPU_PRFCNT_JM_EN ;
 int GPU_PRFCNT_MMU_L2_EN ;
 int GPU_PRFCNT_SHADER_EN ;
 int GPU_PRFCNT_TILER_EN ;
 int gpu_write (struct panfrost_device*,int ,int ) ;

void panfrost_perfcnt_fini(struct panfrost_device *pfdev)
{

 gpu_write(pfdev, GPU_PERFCNT_CFG,
    GPU_PERFCNT_CFG_MODE(GPU_PERFCNT_CFG_MODE_OFF));
 gpu_write(pfdev, GPU_PRFCNT_JM_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_SHADER_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_MMU_L2_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0);
}
