
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int emulate_monitor_status_change (struct intel_vgpu*) ;

void intel_vgpu_reset_display(struct intel_vgpu *vgpu)
{
 emulate_monitor_status_change(vgpu);
}
