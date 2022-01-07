
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int grbm_indexed; scalar_t__ reg_offset; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* si_allowed_read_registers ;
 scalar_t__ si_get_register_value (struct amdgpu_device*,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int si_read_register(struct amdgpu_device *adev, u32 se_num,
        u32 sh_num, u32 reg_offset, u32 *value)
{
 uint32_t i;

 *value = 0;
 for (i = 0; i < ARRAY_SIZE(si_allowed_read_registers); i++) {
  bool indexed = si_allowed_read_registers[i].grbm_indexed;

  if (reg_offset != si_allowed_read_registers[i].reg_offset)
   continue;

  *value = si_get_register_value(adev, indexed, se_num, sh_num,
            reg_offset);
  return 0;
 }
 return -EINVAL;
}
