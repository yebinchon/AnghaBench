
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ih_ring {int rptr; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int mmIH_RB_RPTR ;

__attribute__((used)) static void cz_ih_set_rptr(struct amdgpu_device *adev,
      struct amdgpu_ih_ring *ih)
{
 WREG32(mmIH_RB_RPTR, ih->rptr);
}
