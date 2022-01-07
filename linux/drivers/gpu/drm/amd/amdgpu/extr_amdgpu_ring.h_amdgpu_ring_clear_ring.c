
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int buf_mask; TYPE_1__* funcs; int * ring; } ;
struct TYPE_2__ {int nop; } ;



__attribute__((used)) static inline void amdgpu_ring_clear_ring(struct amdgpu_ring *ring)
{
 int i = 0;
 while (i <= ring->buf_mask)
  ring->ring[i++] = ring->funcs->nop;

}
