
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int DUMP_REG (scalar_t__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HQD_N_REGS ;
 scalar_t__ KFD_VI_SDMA_QUEUE_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 int WARN_ON_ONCE (int) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 scalar_t__** kmalloc_array (int,int,int ) ;
 scalar_t__ mmSDMA0_RLC0_CSA_ADDR_HI ;
 scalar_t__ mmSDMA0_RLC0_CSA_ADDR_LO ;
 scalar_t__ mmSDMA0_RLC0_DOORBELL ;
 scalar_t__ mmSDMA0_RLC0_DUMMY_REG ;
 scalar_t__ mmSDMA0_RLC0_IB_SUB_REMAIN ;
 scalar_t__ mmSDMA0_RLC0_MIDCMD_CNTL ;
 scalar_t__ mmSDMA0_RLC0_MIDCMD_DATA0 ;
 scalar_t__ mmSDMA0_RLC0_RB_CNTL ;
 scalar_t__ mmSDMA0_RLC0_VIRTUAL_ADDR ;
 scalar_t__ mmSDMA0_RLC0_WATERMARK ;

__attribute__((used)) static int kgd_hqd_sdma_dump(struct kgd_dev *kgd,
        uint32_t engine_id, uint32_t queue_id,
        uint32_t (**dump)[2], uint32_t *n_regs)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t sdma_offset = engine_id * SDMA1_REGISTER_OFFSET +
  queue_id * KFD_VI_SDMA_QUEUE_OFFSET;
 uint32_t i = 0, reg;



 *dump = kmalloc_array((19+4+2+3+7) * 2, sizeof(uint32_t), GFP_KERNEL);
 if (*dump == ((void*)0))
  return -ENOMEM;

 for (reg = mmSDMA0_RLC0_RB_CNTL; reg <= mmSDMA0_RLC0_DOORBELL; reg++)
  DUMP_REG(sdma_offset + reg);
 for (reg = mmSDMA0_RLC0_VIRTUAL_ADDR; reg <= mmSDMA0_RLC0_WATERMARK;
      reg++)
  DUMP_REG(sdma_offset + reg);
 for (reg = mmSDMA0_RLC0_CSA_ADDR_LO; reg <= mmSDMA0_RLC0_CSA_ADDR_HI;
      reg++)
  DUMP_REG(sdma_offset + reg);
 for (reg = mmSDMA0_RLC0_IB_SUB_REMAIN; reg <= mmSDMA0_RLC0_DUMMY_REG;
      reg++)
  DUMP_REG(sdma_offset + reg);
 for (reg = mmSDMA0_RLC0_MIDCMD_DATA0; reg <= mmSDMA0_RLC0_MIDCMD_CNTL;
      reg++)
  DUMP_REG(sdma_offset + reg);

 WARN_ON_ONCE(i != (19+4+2+3+7));
 *n_regs = i;

 return 0;
}
