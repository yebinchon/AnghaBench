
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int wptr; } ;


 int PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_TYPE6 ;
 int WARN_ON (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void vcn_v1_0_jpeg_ring_nop(struct amdgpu_ring *ring, uint32_t count)
{
 int i;

 WARN_ON(ring->wptr % 2 || count % 2);

 for (i = 0; i < count / 2; i++) {
  amdgpu_ring_write(ring, PACKETJ(0, 0, 0, PACKETJ_TYPE6));
  amdgpu_ring_write(ring, 0);
 }
}
