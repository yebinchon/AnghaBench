
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int VCN_DEC_CMD_PACKET_START ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_DATA0 ;

__attribute__((used)) static void vcn_v1_0_dec_ring_insert_start(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_DATA0), 0));
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_CMD), 0));
 amdgpu_ring_write(ring, VCN_DEC_CMD_PACKET_START << 1);
}
