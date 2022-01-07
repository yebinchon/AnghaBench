
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int AMDGPU_PASSTHROUGH_MODE ;
 scalar_t__ is_virtual_machine () ;

__attribute__((used)) static void nbio_v7_0_detect_hw_virt(struct amdgpu_device *adev)
{
 if (is_virtual_machine())
  adev->virt.caps |= AMDGPU_PASSTHROUGH_MODE;
}
