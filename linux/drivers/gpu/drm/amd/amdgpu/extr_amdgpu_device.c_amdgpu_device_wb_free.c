
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_wb; int used; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int __clear_bit (int,int ) ;

void amdgpu_device_wb_free(struct amdgpu_device *adev, u32 wb)
{
 wb >>= 3;
 if (wb < adev->wb.num_wb)
  __clear_bit(wb, adev->wb.used);
}
