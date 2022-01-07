
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int HEVC_ENC_CMD_END ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void uvd_v6_0_enc_ring_insert_end(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, HEVC_ENC_CMD_END);
}
