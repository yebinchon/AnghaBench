
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int id; } ;


 int EINVAL ;
 int WARN (int,char*,int ) ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int gen9_trtte_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 u32 trtte = *(u32 *)p_data;

 if ((trtte & 1) && (trtte & (1 << 1)) == 0) {
  WARN(1, "VM(%d): Use physical address for TRTT!\n",
    vgpu->id);
  return -EINVAL;
 }
 write_vreg(vgpu, offset, p_data, bytes);

 return 0;
}
