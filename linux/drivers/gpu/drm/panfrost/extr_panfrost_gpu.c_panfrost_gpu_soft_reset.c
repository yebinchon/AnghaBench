
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dev; scalar_t__ iomem; } ;


 int GPU_CMD ;
 int GPU_CMD_SOFT_RESET ;
 int GPU_INT_CLEAR ;
 int GPU_INT_MASK ;
 scalar_t__ GPU_INT_RAWSTAT ;
 int GPU_IRQ_MASK_ALL ;
 int GPU_IRQ_RESET_COMPLETED ;
 int dev_err (int ,char*) ;
 int gpu_write (struct panfrost_device*,int ,int) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

int panfrost_gpu_soft_reset(struct panfrost_device *pfdev)
{
 int ret;
 u32 val;

 gpu_write(pfdev, GPU_INT_MASK, 0);
 gpu_write(pfdev, GPU_INT_CLEAR, GPU_IRQ_RESET_COMPLETED);
 gpu_write(pfdev, GPU_CMD, GPU_CMD_SOFT_RESET);

 ret = readl_relaxed_poll_timeout(pfdev->iomem + GPU_INT_RAWSTAT,
  val, val & GPU_IRQ_RESET_COMPLETED, 100, 10000);

 if (ret) {
  dev_err(pfdev->dev, "gpu soft reset timed out\n");
  return ret;
 }

 gpu_write(pfdev, GPU_INT_CLEAR, GPU_IRQ_MASK_ALL);
 gpu_write(pfdev, GPU_INT_MASK, GPU_IRQ_MASK_ALL);

 return 0;
}
