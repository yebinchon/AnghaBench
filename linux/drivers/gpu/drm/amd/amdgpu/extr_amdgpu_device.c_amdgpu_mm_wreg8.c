
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_device {scalar_t__ rmmio_size; scalar_t__ rmmio; } ;


 int BUG () ;
 int writeb (int ,scalar_t__) ;

void amdgpu_mm_wreg8(struct amdgpu_device *adev, uint32_t offset, uint8_t value) {
 if (offset < adev->rmmio_size)
  writeb(value, adev->rmmio + offset);
 else
  BUG();
}
