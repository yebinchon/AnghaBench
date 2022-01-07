
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int data_fw_gpu_addr; int ucode_fw_gpu_addr; scalar_t__ uc_start_addr; int fw; } ;
struct amdgpu_device {int srbm_mutex; TYPE_1__ mes; } ;


 int CP_MES_IC_OP_CNTL ;
 int EINVAL ;
 int GC ;
 int INVALIDATE_CACHE ;
 int PRIME_ICACHE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mes_v10_1_allocate_ucode_buffer (struct amdgpu_device*) ;
 int mes_v10_1_allocate_ucode_data_buffer (struct amdgpu_device*) ;
 int mes_v10_1_enable (struct amdgpu_device*,int) ;
 int mes_v10_1_free_ucode_buffers (struct amdgpu_device*) ;
 int mmCP_MES_IC_BASE_CNTL ;
 int mmCP_MES_IC_BASE_HI ;
 int mmCP_MES_IC_BASE_LO ;
 int mmCP_MES_IC_OP_CNTL ;
 int mmCP_MES_MDBASE_HI ;
 int mmCP_MES_MDBASE_LO ;
 int mmCP_MES_MDBOUND_LO ;
 int mmCP_MES_MIBOUND_LO ;
 int mmCP_MES_PRGRM_CNTR_START ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_grbm_select (struct amdgpu_device*,int,int ,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int mes_v10_1_load_microcode(struct amdgpu_device *adev)
{
 int r;
 uint32_t data;

 if (!adev->mes.fw)
  return -EINVAL;

 r = mes_v10_1_allocate_ucode_buffer(adev);
 if (r)
  return r;

 r = mes_v10_1_allocate_ucode_data_buffer(adev);
 if (r) {
  mes_v10_1_free_ucode_buffers(adev);
  return r;
 }

 mes_v10_1_enable(adev, 0);

 WREG32_SOC15(GC, 0, mmCP_MES_IC_BASE_CNTL, 0);

 mutex_lock(&adev->srbm_mutex);

 nv_grbm_select(adev, 3, 0, 0, 0);


 WREG32_SOC15(GC, 0, mmCP_MES_PRGRM_CNTR_START,
       (uint32_t)(adev->mes.uc_start_addr) >> 2);


 WREG32_SOC15(GC, 0, mmCP_MES_IC_BASE_LO,
       lower_32_bits(adev->mes.ucode_fw_gpu_addr));
 WREG32_SOC15(GC, 0, mmCP_MES_IC_BASE_HI,
       upper_32_bits(adev->mes.ucode_fw_gpu_addr));


 WREG32_SOC15(GC, 0, mmCP_MES_MIBOUND_LO, 0x1FFFFF);


 WREG32_SOC15(GC, 0, mmCP_MES_MDBASE_LO,
       lower_32_bits(adev->mes.data_fw_gpu_addr));
 WREG32_SOC15(GC, 0, mmCP_MES_MDBASE_HI,
       upper_32_bits(adev->mes.data_fw_gpu_addr));


 WREG32_SOC15(GC, 0, mmCP_MES_MDBOUND_LO, 0x3FFFF);


 data = RREG32_SOC15(GC, 0, mmCP_MES_IC_OP_CNTL);
 data = REG_SET_FIELD(data, CP_MES_IC_OP_CNTL, PRIME_ICACHE, 0);
 data = REG_SET_FIELD(data, CP_MES_IC_OP_CNTL, INVALIDATE_CACHE, 1);
 WREG32_SOC15(GC, 0, mmCP_MES_IC_OP_CNTL, data);


 data = RREG32_SOC15(GC, 0, mmCP_MES_IC_OP_CNTL);
 data = REG_SET_FIELD(data, CP_MES_IC_OP_CNTL, PRIME_ICACHE, 1);
 WREG32_SOC15(GC, 0, mmCP_MES_IC_OP_CNTL, data);

 nv_grbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);

 return 0;
}
