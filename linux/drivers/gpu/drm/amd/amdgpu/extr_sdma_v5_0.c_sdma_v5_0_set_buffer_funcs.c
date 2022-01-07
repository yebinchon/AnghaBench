
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* instance; } ;
struct TYPE_4__ {int * buffer_funcs_ring; int * buffer_funcs; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_1__ mman; } ;
struct TYPE_5__ {int ring; } ;


 int sdma_v5_0_buffer_funcs ;

__attribute__((used)) static void sdma_v5_0_set_buffer_funcs(struct amdgpu_device *adev)
{
 if (adev->mman.buffer_funcs == ((void*)0)) {
  adev->mman.buffer_funcs = &sdma_v5_0_buffer_funcs;
  adev->mman.buffer_funcs_ring = &adev->sdma.instance[0].ring;
 }
}
