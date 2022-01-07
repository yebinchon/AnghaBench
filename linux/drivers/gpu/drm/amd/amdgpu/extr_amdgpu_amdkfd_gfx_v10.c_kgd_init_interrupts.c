
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int num_pipe_per_mec; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK ;
 int CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK ;
 int GC ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int lock_srbm (struct kgd_dev*,int,int,int ,int ) ;
 int mmCPC_INT_CNTL ;
 int unlock_srbm (struct kgd_dev*) ;

__attribute__((used)) static int kgd_init_interrupts(struct kgd_dev *kgd, uint32_t pipe_id)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t mec;
 uint32_t pipe;

 mec = (pipe_id / adev->gfx.mec.num_pipe_per_mec) + 1;
 pipe = (pipe_id % adev->gfx.mec.num_pipe_per_mec);

 lock_srbm(kgd, mec, pipe, 0, 0);

 WREG32(SOC15_REG_OFFSET(GC, 0, mmCPC_INT_CNTL),
  CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK |
  CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK);

 unlock_srbm(kgd);

 return 0;
}
