
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct amdgpu_ring {int doorbell_index; int use_doorbell; } ;
struct TYPE_10__ {int doorbell_index; int use_doorbell; } ;
struct TYPE_11__ {TYPE_4__ ih; } ;
struct TYPE_8__ {int sdma_doorbell_range; } ;
struct TYPE_12__ {int num_instances; TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_5__ irq; TYPE_3__* nbio_funcs; TYPE_2__ doorbell_index; TYPE_6__ sdma; } ;
struct TYPE_9__ {int (* ih_doorbell_range ) (struct amdgpu_device*,int ,int ) ;int (* sdma_doorbell_range ) (struct amdgpu_device*,int,int ,int ,int ) ;} ;
struct TYPE_7__ {struct amdgpu_ring ring; } ;


 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*,int,int ,int ,int ) ;
 int stub2 (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static void soc15_doorbell_range_init(struct amdgpu_device *adev)
{
 int i;
 struct amdgpu_ring *ring;


 if (!amdgpu_sriov_vf(adev)) {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   ring = &adev->sdma.instance[i].ring;
   adev->nbio_funcs->sdma_doorbell_range(adev, i,
    ring->use_doorbell, ring->doorbell_index,
    adev->doorbell_index.sdma_doorbell_range);
  }

  adev->nbio_funcs->ih_doorbell_range(adev, adev->irq.ih.use_doorbell,
      adev->irq.ih.doorbell_index);
 }
}
