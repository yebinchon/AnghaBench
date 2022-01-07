
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int id; } ;


 scalar_t__ GFX_MODE_BIT_SET_IN_MASK (int ,int ) ;
 int START_DMA ;
 int WARN_ONCE (int,char*,int ) ;
 int vgpu_vreg (struct intel_vgpu*,unsigned int) ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int dma_ctrl_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 u32 mode;

 write_vreg(vgpu, offset, p_data, bytes);
 mode = vgpu_vreg(vgpu, offset);

 if (GFX_MODE_BIT_SET_IN_MASK(mode, START_DMA)) {
  WARN_ONCE(1, "VM(%d): iGVT-g doesn't support GuC\n",
    vgpu->id);
  return 0;
 }

 return 0;
}
