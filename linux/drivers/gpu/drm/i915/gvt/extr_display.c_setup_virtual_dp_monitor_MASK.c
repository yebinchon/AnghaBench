#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu_port {int type; unsigned int id; TYPE_1__* dpcd; TYPE_2__* edid; } ;
struct intel_vgpu {int dummy; } ;
struct TYPE_4__ {int* edid_block; int data_valid; } ;
struct TYPE_3__ {int* data; int data_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCD_HEADER_SIZE ; 
 size_t DPCD_SINK_COUNT ; 
 int /*<<< orphan*/  EDID_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int GVT_EDID_NUM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  dpcd_fix_data ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 struct intel_vgpu_port* FUNC2 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * virtual_dp_monitor_edid ; 

__attribute__((used)) static int FUNC6(struct intel_vgpu *vgpu, int port_num,
				    int type, unsigned int resolution)
{
	struct intel_vgpu_port *port = FUNC2(vgpu, port_num);

	if (FUNC0(resolution >= GVT_EDID_NUM))
		return -EINVAL;

	port->edid = FUNC4(sizeof(*(port->edid)), GFP_KERNEL);
	if (!port->edid)
		return -ENOMEM;

	port->dpcd = FUNC4(sizeof(*(port->dpcd)), GFP_KERNEL);
	if (!port->dpcd) {
		FUNC3(port->edid);
		return -ENOMEM;
	}

	FUNC5(port->edid->edid_block, virtual_dp_monitor_edid[resolution],
			EDID_SIZE);
	port->edid->data_valid = true;

	FUNC5(port->dpcd->data, dpcd_fix_data, DPCD_HEADER_SIZE);
	port->dpcd->data_valid = true;
	port->dpcd->data[DPCD_SINK_COUNT] = 0x1;
	port->type = type;
	port->id = resolution;

	FUNC1(vgpu);

	return 0;
}