
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {int nop; } ;


 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

void amdgpu_ring_insert_nop(struct amdgpu_ring *ring, uint32_t count)
{
 int i;

 for (i = 0; i < count; i++)
  amdgpu_ring_write(ring, ring->funcs->nop);
}
