
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {TYPE_2__* gvt; } ;
struct TYPE_3__ {unsigned int cfg_space_size; } ;
struct TYPE_4__ {TYPE_1__ device_info; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int memcpy (void*,scalar_t__,unsigned int) ;
 scalar_t__ vgpu_cfg_space (struct intel_vgpu*) ;

int intel_vgpu_emulate_cfg_read(struct intel_vgpu *vgpu, unsigned int offset,
 void *p_data, unsigned int bytes)
{
 if (WARN_ON(bytes > 4))
  return -EINVAL;

 if (WARN_ON(offset + bytes > vgpu->gvt->device_info.cfg_space_size))
  return -EINVAL;

 memcpy(p_data, vgpu_cfg_space(vgpu) + offset, bytes);
 return 0;
}
