
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pages; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int amdgpu_gart_dummy_page_fini (struct amdgpu_device*) ;
 int vfree (int *) ;

void amdgpu_gart_fini(struct amdgpu_device *adev)
{




 amdgpu_gart_dummy_page_fini(adev);
}
