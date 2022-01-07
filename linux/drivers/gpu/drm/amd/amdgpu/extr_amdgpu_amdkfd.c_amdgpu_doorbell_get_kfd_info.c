
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int num_doorbells; scalar_t__ base; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;
typedef scalar_t__ phys_addr_t ;



__attribute__((used)) static void amdgpu_doorbell_get_kfd_info(struct amdgpu_device *adev,
      phys_addr_t *aperture_base,
      size_t *aperture_size,
      size_t *start_offset)
{




 if (adev->doorbell.size > adev->doorbell.num_doorbells * sizeof(u32)) {
  *aperture_base = adev->doorbell.base;
  *aperture_size = adev->doorbell.size;
  *start_offset = adev->doorbell.num_doorbells * sizeof(u32);
 } else {
  *aperture_base = 0;
  *aperture_size = 0;
  *start_offset = 0;
 }
}
