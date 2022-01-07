
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int wptr; } ;


 int PACKET0 (int ,int ) ;
 int WARN_ON (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int mmUVD_NO_OP ;

__attribute__((used)) static void uvd_v4_2_ring_insert_nop(struct amdgpu_ring *ring, uint32_t count)
{
 int i;

 WARN_ON(ring->wptr % 2 || count % 2);

 for (i = 0; i < count / 2; i++) {
  amdgpu_ring_write(ring, PACKET0(mmUVD_NO_OP, 0));
  amdgpu_ring_write(ring, 0);
 }
}
