
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int panfrost_gpu_power_off (struct panfrost_device*) ;

void panfrost_gpu_fini(struct panfrost_device *pfdev)
{
 panfrost_gpu_power_off(pfdev);
}
