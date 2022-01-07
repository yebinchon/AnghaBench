
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int DUMP_REG (scalar_t__) ;
 int ENOMEM ;
 int GC ;
 int GFP_KERNEL ;
 int HQD_N_REGS ;
 scalar_t__ SOC15_REG_OFFSET (int ,int ,int ) ;
 int WARN_ON_ONCE (int) ;
 int acquire_queue (struct kgd_dev*,scalar_t__,scalar_t__) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 scalar_t__** kmalloc_array (int,int,int ) ;
 int mmCP_HQD_PQ_WPTR_HI ;
 int mmCP_MQD_BASE_ADDR ;
 int release_queue (struct kgd_dev*) ;

int kgd_gfx_v9_hqd_dump(struct kgd_dev *kgd,
   uint32_t pipe_id, uint32_t queue_id,
   uint32_t (**dump)[2], uint32_t *n_regs)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t i = 0, reg;
 *dump = kmalloc_array(56 * 2, sizeof(uint32_t), GFP_KERNEL);
 if (*dump == ((void*)0))
  return -ENOMEM;

 acquire_queue(kgd, pipe_id, queue_id);

 for (reg = SOC15_REG_OFFSET(GC, 0, mmCP_MQD_BASE_ADDR);
      reg <= SOC15_REG_OFFSET(GC, 0, mmCP_HQD_PQ_WPTR_HI); reg++)
  do { if (WARN_ON_ONCE(i >= 56)) break; (*dump)[i][0] = (reg) << 2; (*dump)[i++][1] = RREG32(reg); } while (0);

 release_queue(kgd);

 WARN_ON_ONCE(i != 56);
 *n_regs = i;

 return 0;
}
