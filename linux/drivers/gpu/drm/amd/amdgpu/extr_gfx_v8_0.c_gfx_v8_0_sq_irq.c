
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {unsigned int* src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {unsigned int ih_data; int work; } ;
struct TYPE_3__ {TYPE_2__ sq_work; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int gfx_v8_0_parse_sq_irq (struct amdgpu_device*,unsigned int) ;
 int schedule_work (int *) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static int gfx_v8_0_sq_irq(struct amdgpu_device *adev,
      struct amdgpu_irq_src *source,
      struct amdgpu_iv_entry *entry)
{
 unsigned ih_data = entry->src_data[0];






 if (work_pending(&adev->gfx.sq_work.work)) {
  gfx_v8_0_parse_sq_irq(adev, ih_data);
 } else {
  adev->gfx.sq_work.ih_data = ih_data;
  schedule_work(&adev->gfx.sq_work.work);
 }

 return 0;
}
