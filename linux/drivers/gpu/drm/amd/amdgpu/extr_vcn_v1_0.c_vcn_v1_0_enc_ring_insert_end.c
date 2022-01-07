
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int VCN_ENC_CMD_END ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void vcn_v1_0_enc_ring_insert_end(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, VCN_ENC_CMD_END);
}
