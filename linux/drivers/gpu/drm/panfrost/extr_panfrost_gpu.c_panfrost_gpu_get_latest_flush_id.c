
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dummy; } ;


 int GPU_LATEST_FLUSH_ID ;
 int HW_FEATURE_FLUSH_REDUCTION ;
 int gpu_read (struct panfrost_device*,int ) ;
 scalar_t__ panfrost_has_hw_feature (struct panfrost_device*,int ) ;

u32 panfrost_gpu_get_latest_flush_id(struct panfrost_device *pfdev)
{
 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_FLUSH_REDUCTION))
  return gpu_read(pfdev, GPU_LATEST_FLUSH_ID);
 return 0;
}
