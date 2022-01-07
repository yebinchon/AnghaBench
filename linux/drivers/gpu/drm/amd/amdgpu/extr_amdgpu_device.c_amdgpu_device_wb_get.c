
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {unsigned long num_wb; int used; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int EINVAL ;
 int __set_bit (unsigned long,int ) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;

int amdgpu_device_wb_get(struct amdgpu_device *adev, u32 *wb)
{
 unsigned long offset = find_first_zero_bit(adev->wb.used, adev->wb.num_wb);

 if (offset < adev->wb.num_wb) {
  __set_bit(offset, adev->wb.used);
  *wb = offset << 3;
  return 0;
 } else {
  return -EINVAL;
 }
}
