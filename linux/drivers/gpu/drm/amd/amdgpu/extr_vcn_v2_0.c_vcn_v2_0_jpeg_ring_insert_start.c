
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int JRBC_DEC_EXTERNAL_REG_WRITE_ADDR ;
 int PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_TYPE0 ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET ;

void vcn_v2_0_jpeg_ring_insert_start(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x68e04);

 amdgpu_ring_write(ring, PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x80010000);
}
