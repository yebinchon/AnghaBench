
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_2__ {int gws_size; } ;
struct amdgpu_device {TYPE_1__ gds; } ;



uint32_t amdgpu_amdkfd_get_num_gws(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 return adev->gds.gws_size;
}
