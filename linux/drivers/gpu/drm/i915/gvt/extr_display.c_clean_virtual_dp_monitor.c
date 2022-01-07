
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_port {int * dpcd; int * edid; } ;
struct intel_vgpu {int dummy; } ;


 struct intel_vgpu_port* intel_vgpu_port (struct intel_vgpu*,int) ;
 int kfree (int *) ;

__attribute__((used)) static void clean_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num)
{
 struct intel_vgpu_port *port = intel_vgpu_port(vgpu, port_num);

 kfree(port->edid);
 port->edid = ((void*)0);

 kfree(port->dpcd);
 port->dpcd = ((void*)0);
}
