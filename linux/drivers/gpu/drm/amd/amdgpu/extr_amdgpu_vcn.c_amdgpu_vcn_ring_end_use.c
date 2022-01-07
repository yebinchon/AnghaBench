
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {TYPE_2__* adev; } ;
struct TYPE_3__ {int idle_work; } ;
struct TYPE_4__ {TYPE_1__ vcn; } ;


 int VCN_IDLE_TIMEOUT ;
 int schedule_delayed_work (int *,int ) ;

void amdgpu_vcn_ring_end_use(struct amdgpu_ring *ring)
{
 schedule_delayed_work(&ring->adev->vcn.idle_work, VCN_IDLE_TIMEOUT);
}
