
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int VCE_CMD_END ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void vce_v4_0_ring_insert_end(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, VCE_CMD_END);
}
