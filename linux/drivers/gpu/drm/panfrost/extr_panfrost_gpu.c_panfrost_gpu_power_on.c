
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ l2_present; scalar_t__ stack_present; scalar_t__ shader_present; scalar_t__ tiler_present; } ;
struct panfrost_device {int dev; TYPE_1__ features; scalar_t__ iomem; } ;


 int L2_PWRON_LO ;
 scalar_t__ L2_READY_LO ;
 int SHADER_PWRON_LO ;
 scalar_t__ SHADER_READY_LO ;
 int STACK_PWRON_LO ;
 scalar_t__ STACK_READY_LO ;
 int TILER_PWRON_LO ;
 scalar_t__ TILER_READY_LO ;
 int dev_err (int ,char*) ;
 int gpu_write (struct panfrost_device*,int ,scalar_t__) ;
 int readl_relaxed_poll_timeout (scalar_t__,scalar_t__,int,int,int) ;

void panfrost_gpu_power_on(struct panfrost_device *pfdev)
{
 int ret;
 u32 val;


 gpu_write(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
 ret = readl_relaxed_poll_timeout(pfdev->iomem + L2_READY_LO,
  val, val == pfdev->features.l2_present, 100, 1000);

 gpu_write(pfdev, STACK_PWRON_LO, pfdev->features.stack_present);
 ret |= readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
  val, val == pfdev->features.stack_present, 100, 1000);

 gpu_write(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
 ret |= readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
  val, val == pfdev->features.shader_present, 100, 1000);

 gpu_write(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
 ret |= readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
  val, val == pfdev->features.tiler_present, 100, 1000);

 if (ret)
  dev_err(pfdev->dev, "error powering up gpu");
}
