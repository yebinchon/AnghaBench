
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int panfrost_gpu_power_on (struct panfrost_device*) ;
 int panfrost_gpu_soft_reset (struct panfrost_device*) ;
 int panfrost_job_enable_interrupts (struct panfrost_device*) ;
 int panfrost_mmu_reset (struct panfrost_device*) ;

void panfrost_device_reset(struct panfrost_device *pfdev)
{
 panfrost_gpu_soft_reset(pfdev);

 panfrost_gpu_power_on(pfdev);
 panfrost_mmu_reset(pfdev);
 panfrost_job_enable_interrupts(pfdev);
}
