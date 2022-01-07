
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int L2_PWROFF_LO ;
 int SHADER_PWROFF_LO ;
 int STACK_PWROFF_LO ;
 int TILER_PWROFF_LO ;
 int gpu_write (struct panfrost_device*,int ,int ) ;

void panfrost_gpu_power_off(struct panfrost_device *pfdev)
{
 gpu_write(pfdev, TILER_PWROFF_LO, 0);
 gpu_write(pfdev, SHADER_PWROFF_LO, 0);
 gpu_write(pfdev, STACK_PWROFF_LO, 0);
 gpu_write(pfdev, L2_PWROFF_LO, 0);
}
