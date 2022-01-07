
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_hpd_id { ____Placeholder_amdgpu_hpd_id } amdgpu_hpd_id ;



__attribute__((used)) static bool dce_virtual_hpd_sense(struct amdgpu_device *adev,
          enum amdgpu_hpd_id hpd)
{
 return 1;
}
