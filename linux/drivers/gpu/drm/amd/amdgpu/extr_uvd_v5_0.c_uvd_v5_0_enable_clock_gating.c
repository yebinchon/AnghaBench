
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_UVD ;
 int RREG32 (int ) ;
 int UVD_CGC_GATE__IDCT_MASK ;
 int UVD_CGC_GATE__JPEG_MASK ;
 int UVD_CGC_GATE__LBSI_MASK ;
 int UVD_CGC_GATE__LMI_MC_MASK ;
 int UVD_CGC_GATE__LRBBM_MASK ;
 int UVD_CGC_GATE__MPC_MASK ;
 int UVD_CGC_GATE__MPEG2_MASK ;
 int UVD_CGC_GATE__MPRD_MASK ;
 int UVD_CGC_GATE__RBC_MASK ;
 int UVD_CGC_GATE__REGS_MASK ;
 int UVD_CGC_GATE__SCPU_MASK ;
 int UVD_CGC_GATE__SYS_MASK ;
 int UVD_CGC_GATE__UDEC_CM_MASK ;
 int UVD_CGC_GATE__UDEC_DB_MASK ;
 int UVD_CGC_GATE__UDEC_IT_MASK ;
 int UVD_CGC_GATE__UDEC_MASK ;
 int UVD_CGC_GATE__UDEC_MP_MASK ;
 int UVD_CGC_GATE__UDEC_RE_MASK ;
 int UVD_CGC_GATE__VCPU_MASK ;
 int UVD_CGC_GATE__WCB_MASK ;
 int UVD_SUVD_CGC_GATE__SCM_MASK ;
 int UVD_SUVD_CGC_GATE__SDB_MASK ;
 int UVD_SUVD_CGC_GATE__SIT_MASK ;
 int UVD_SUVD_CGC_GATE__SMP_MASK ;
 int UVD_SUVD_CGC_GATE__SRE_MASK ;
 int WREG32 (int ,int) ;
 int mmUVD_CGC_GATE ;
 int mmUVD_SUVD_CGC_GATE ;

__attribute__((used)) static void uvd_v5_0_enable_clock_gating(struct amdgpu_device *adev, bool enable)
{
 uint32_t data1, data3, suvd_flags;

 data1 = RREG32(mmUVD_SUVD_CGC_GATE);
 data3 = RREG32(mmUVD_CGC_GATE);

 suvd_flags = UVD_SUVD_CGC_GATE__SRE_MASK |
       UVD_SUVD_CGC_GATE__SIT_MASK |
       UVD_SUVD_CGC_GATE__SMP_MASK |
       UVD_SUVD_CGC_GATE__SCM_MASK |
       UVD_SUVD_CGC_GATE__SDB_MASK;

 if (enable) {
  data3 |= (UVD_CGC_GATE__SYS_MASK |
   UVD_CGC_GATE__UDEC_MASK |
   UVD_CGC_GATE__MPEG2_MASK |
   UVD_CGC_GATE__RBC_MASK |
   UVD_CGC_GATE__LMI_MC_MASK |
   UVD_CGC_GATE__IDCT_MASK |
   UVD_CGC_GATE__MPRD_MASK |
   UVD_CGC_GATE__MPC_MASK |
   UVD_CGC_GATE__LBSI_MASK |
   UVD_CGC_GATE__LRBBM_MASK |
   UVD_CGC_GATE__UDEC_RE_MASK |
   UVD_CGC_GATE__UDEC_CM_MASK |
   UVD_CGC_GATE__UDEC_IT_MASK |
   UVD_CGC_GATE__UDEC_DB_MASK |
   UVD_CGC_GATE__UDEC_MP_MASK |
   UVD_CGC_GATE__WCB_MASK |
   UVD_CGC_GATE__JPEG_MASK |
   UVD_CGC_GATE__SCPU_MASK);

  if (adev->pg_flags & AMD_PG_SUPPORT_UVD)
   data3 |= UVD_CGC_GATE__VCPU_MASK;
  data3 &= ~UVD_CGC_GATE__REGS_MASK;
  data1 |= suvd_flags;
 } else {
  data3 = 0;
  data1 = 0;
 }

 WREG32(mmUVD_SUVD_CGC_GATE, data1);
 WREG32(mmUVD_CGC_GATE, data3);
}
