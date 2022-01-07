
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmBIF_BX_PF_GPU_HDP_FLUSH_REQ ;

__attribute__((used)) static u32 nbio_v2_3_get_hdp_flush_req_offset(struct amdgpu_device *adev)
{
 return SOC15_REG_OFFSET(NBIO, 0, mmBIF_BX_PF_GPU_HDP_FLUSH_REQ);
}
