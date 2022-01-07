
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 int GPU_CMD ;
 int GPU_CMD_CLEAN_CACHES ;
 int gpu_write (struct panfrost_device*,int ,int ) ;

void panfrost_perfcnt_sample_done(struct panfrost_device *pfdev)
{
 gpu_write(pfdev, GPU_CMD, GPU_CMD_CLEAN_CACHES);
}
