
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int num_pipe_per_mec; int hpd_eop_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {int srbm_mutex; TYPE_2__ gfx; } ;


 int CP_HPD_EOP_CONTROL__EOP_SIZE_MASK ;
 int GFX7_MEC_HPD_SIZE ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int cik_srbm_select (struct amdgpu_device*,int,int,int ,int ) ;
 int mmCP_HPD_EOP_BASE_ADDR ;
 int mmCP_HPD_EOP_BASE_ADDR_HI ;
 int mmCP_HPD_EOP_CONTROL ;
 int mmCP_HPD_EOP_VMID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v7_0_compute_pipe_init(struct amdgpu_device *adev,
           int mec, int pipe)
{
 u64 eop_gpu_addr;
 u32 tmp;
 size_t eop_offset = (mec * adev->gfx.mec.num_pipe_per_mec + pipe)
       * GFX7_MEC_HPD_SIZE * 2;

 mutex_lock(&adev->srbm_mutex);
 eop_gpu_addr = adev->gfx.mec.hpd_eop_gpu_addr + eop_offset;

 cik_srbm_select(adev, mec + 1, pipe, 0, 0);


 WREG32(mmCP_HPD_EOP_BASE_ADDR, eop_gpu_addr >> 8);
 WREG32(mmCP_HPD_EOP_BASE_ADDR_HI, upper_32_bits(eop_gpu_addr) >> 8);


 WREG32(mmCP_HPD_EOP_VMID, 0);


 tmp = RREG32(mmCP_HPD_EOP_CONTROL);
 tmp &= ~CP_HPD_EOP_CONTROL__EOP_SIZE_MASK;
 tmp |= order_base_2(GFX7_MEC_HPD_SIZE / 8);
 WREG32(mmCP_HPD_EOP_CONTROL, tmp);

 cik_srbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);
}
