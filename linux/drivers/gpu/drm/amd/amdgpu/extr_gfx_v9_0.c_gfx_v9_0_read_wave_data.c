
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int ixSQ_WAVE_EXEC_HI ;
 int ixSQ_WAVE_EXEC_LO ;
 int ixSQ_WAVE_GPR_ALLOC ;
 int ixSQ_WAVE_HW_ID ;
 int ixSQ_WAVE_IB_DBG0 ;
 int ixSQ_WAVE_IB_STS ;
 int ixSQ_WAVE_INST_DW0 ;
 int ixSQ_WAVE_INST_DW1 ;
 int ixSQ_WAVE_LDS_ALLOC ;
 int ixSQ_WAVE_M0 ;
 int ixSQ_WAVE_PC_HI ;
 int ixSQ_WAVE_PC_LO ;
 int ixSQ_WAVE_STATUS ;
 int ixSQ_WAVE_TRAPSTS ;
 int wave_read_ind (struct amdgpu_device*,int,int,int ) ;

__attribute__((used)) static void gfx_v9_0_read_wave_data(struct amdgpu_device *adev, uint32_t simd, uint32_t wave, uint32_t *dst, int *no_fields)
{

 dst[(*no_fields)++] = 1;
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_STATUS);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_PC_LO);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_PC_HI);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_EXEC_LO);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_EXEC_HI);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_HW_ID);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_INST_DW0);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_INST_DW1);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_GPR_ALLOC);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_LDS_ALLOC);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_TRAPSTS);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_IB_STS);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_IB_DBG0);
 dst[(*no_fields)++] = wave_read_ind(adev, simd, wave, ixSQ_WAVE_M0);
}
