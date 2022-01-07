
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_port {int type; unsigned int id; TYPE_1__* dpcd; TYPE_2__* edid; } ;
struct intel_vgpu {int dummy; } ;
struct TYPE_4__ {int* edid_block; int data_valid; } ;
struct TYPE_3__ {int* data; int data_valid; } ;


 int DPCD_HEADER_SIZE ;
 size_t DPCD_SINK_COUNT ;
 int EDID_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int GVT_EDID_NUM ;
 scalar_t__ WARN_ON (int) ;
 int dpcd_fix_data ;
 int emulate_monitor_status_change (struct intel_vgpu*) ;
 struct intel_vgpu_port* intel_vgpu_port (struct intel_vgpu*,int) ;
 int kfree (TYPE_2__*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int*,int ,int ) ;
 int * virtual_dp_monitor_edid ;

__attribute__((used)) static int setup_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num,
        int type, unsigned int resolution)
{
 struct intel_vgpu_port *port = intel_vgpu_port(vgpu, port_num);

 if (WARN_ON(resolution >= GVT_EDID_NUM))
  return -EINVAL;

 port->edid = kzalloc(sizeof(*(port->edid)), GFP_KERNEL);
 if (!port->edid)
  return -ENOMEM;

 port->dpcd = kzalloc(sizeof(*(port->dpcd)), GFP_KERNEL);
 if (!port->dpcd) {
  kfree(port->edid);
  return -ENOMEM;
 }

 memcpy(port->edid->edid_block, virtual_dp_monitor_edid[resolution],
   EDID_SIZE);
 port->edid->data_valid = 1;

 memcpy(port->dpcd->data, dpcd_fix_data, DPCD_HEADER_SIZE);
 port->dpcd->data_valid = 1;
 port->dpcd->data[DPCD_SINK_COUNT] = 0x1;
 port->type = type;
 port->id = resolution;

 emulate_monitor_status_change(vgpu);

 return 0;
}
