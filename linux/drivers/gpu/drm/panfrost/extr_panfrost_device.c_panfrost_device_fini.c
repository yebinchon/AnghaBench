
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int panfrost_clk_fini (struct panfrost_device*) ;
 int panfrost_gpu_fini (struct panfrost_device*) ;
 int panfrost_job_fini (struct panfrost_device*) ;
 int panfrost_mmu_fini (struct panfrost_device*) ;
 int panfrost_perfcnt_fini (struct panfrost_device*) ;
 int panfrost_regulator_fini (struct panfrost_device*) ;
 int panfrost_reset_fini (struct panfrost_device*) ;

void panfrost_device_fini(struct panfrost_device *pfdev)
{
 panfrost_perfcnt_fini(pfdev);
 panfrost_job_fini(pfdev);
 panfrost_mmu_fini(pfdev);
 panfrost_gpu_fini(pfdev);
 panfrost_reset_fini(pfdev);
 panfrost_regulator_fini(pfdev);
 panfrost_clk_fini(pfdev);
}
