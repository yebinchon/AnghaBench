
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ u32 ;
struct soc15_allowed_register_entry {size_t hwip; size_t inst; size_t seg; scalar_t__ reg_offset; int grbm_indexed; } ;
struct amdgpu_device {scalar_t__*** reg_offset; } ;


 size_t ARRAY_SIZE (struct soc15_allowed_register_entry*) ;
 int EINVAL ;
 struct soc15_allowed_register_entry* nv_allowed_read_registers ;
 scalar_t__ nv_get_register_value (struct amdgpu_device*,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int nv_read_register(struct amdgpu_device *adev, u32 se_num,
       u32 sh_num, u32 reg_offset, u32 *value)
{
 uint32_t i;
 struct soc15_allowed_register_entry *en;

 *value = 0;
 for (i = 0; i < ARRAY_SIZE(nv_allowed_read_registers); i++) {
  en = &nv_allowed_read_registers[i];
  if (reg_offset !=
      (adev->reg_offset[en->hwip][en->inst][en->seg] + en->reg_offset))
   continue;

  *value = nv_get_register_value(adev,
            nv_allowed_read_registers[i].grbm_indexed,
            se_num, sh_num, reg_offset);
  return 0;
 }
 return -EINVAL;
}
