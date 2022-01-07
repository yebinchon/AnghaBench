
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;
typedef int intel_engine_mask_t ;


 int reset_execlist (struct intel_vgpu*,int ) ;

__attribute__((used)) static int init_execlist(struct intel_vgpu *vgpu,
    intel_engine_mask_t engine_mask)
{
 reset_execlist(vgpu, engine_mask);
 return 0;
}
