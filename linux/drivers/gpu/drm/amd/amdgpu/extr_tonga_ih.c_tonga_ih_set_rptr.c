
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ih_ring {int rptr; int doorbell_index; int * rptr_cpu; scalar_t__ use_doorbell; } ;
struct amdgpu_device {int dummy; } ;


 int WDOORBELL32 (int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmIH_RB_RPTR ;

__attribute__((used)) static void tonga_ih_set_rptr(struct amdgpu_device *adev,
         struct amdgpu_ih_ring *ih)
{
 if (ih->use_doorbell) {

  *ih->rptr_cpu = ih->rptr;
  WDOORBELL32(ih->doorbell_index, ih->rptr);
 } else {
  WREG32(mmIH_RB_RPTR, ih->rptr);
 }
}
