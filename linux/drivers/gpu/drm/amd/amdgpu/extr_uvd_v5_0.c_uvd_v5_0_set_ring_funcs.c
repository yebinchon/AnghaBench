
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_4__ {int * funcs; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;


 int uvd_v5_0_ring_funcs ;

__attribute__((used)) static void uvd_v5_0_set_ring_funcs(struct amdgpu_device *adev)
{
 adev->uvd.inst->ring.funcs = &uvd_v5_0_ring_funcs;
}
