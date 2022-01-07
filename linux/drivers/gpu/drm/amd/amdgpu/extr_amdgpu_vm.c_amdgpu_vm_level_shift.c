
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct amdgpu_device {int dev; TYPE_1__ vm_manager; } ;






 int dev_err (int ,char*,unsigned int) ;

__attribute__((used)) static unsigned amdgpu_vm_level_shift(struct amdgpu_device *adev,
          unsigned level)
{
 unsigned shift = 0xff;

 switch (level) {
 case 129:
 case 130:
 case 131:
  shift = 9 * (131 - level) +
   adev->vm_manager.block_size;
  break;
 case 128:
  shift = 0;
  break;
 default:
  dev_err(adev->dev, "the level%d isn't supported.\n", level);
 }

 return shift;
}
