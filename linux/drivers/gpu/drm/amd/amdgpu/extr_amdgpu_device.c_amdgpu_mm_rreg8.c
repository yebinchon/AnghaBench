
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_device {scalar_t__ rmmio_size; scalar_t__ rmmio; } ;


 int BUG () ;
 int readb (scalar_t__) ;

uint8_t amdgpu_mm_rreg8(struct amdgpu_device *adev, uint32_t offset) {
 if (offset < adev->rmmio_size)
  return (readb(adev->rmmio + offset));
 BUG();
}
