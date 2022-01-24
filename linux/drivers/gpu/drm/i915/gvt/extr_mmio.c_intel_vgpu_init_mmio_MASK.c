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
struct TYPE_4__ {int /*<<< orphan*/  vreg; } ;
struct intel_vgpu {TYPE_2__ mmio; TYPE_1__* gvt; } ;
struct intel_gvt_device_info {int /*<<< orphan*/  mmio_size; } ;
struct TYPE_3__ {struct intel_gvt_device_info device_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct intel_vgpu *vgpu)
{
	const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;

	vgpu->mmio.vreg = FUNC1(info->mmio_size);
	if (!vgpu->mmio.vreg)
		return -ENOMEM;

	FUNC0(vgpu, true);

	return 0;
}