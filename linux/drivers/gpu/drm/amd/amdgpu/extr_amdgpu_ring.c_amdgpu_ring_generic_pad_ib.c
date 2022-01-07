
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; } ;
struct amdgpu_ib {int length_dw; int * ptr; } ;
struct TYPE_2__ {int align_mask; int nop; } ;



void amdgpu_ring_generic_pad_ib(struct amdgpu_ring *ring, struct amdgpu_ib *ib)
{
 while (ib->length_dw & ring->funcs->align_mask)
  ib->ptr[ib->length_dw++] = ring->funcs->nop;
}
