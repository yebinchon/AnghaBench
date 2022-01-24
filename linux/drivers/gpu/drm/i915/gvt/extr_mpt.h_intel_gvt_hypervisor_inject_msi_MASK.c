#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct intel_vgpu {int /*<<< orphan*/  handle; int /*<<< orphan*/  id; TYPE_3__* gvt; } ;
struct TYPE_8__ {TYPE_1__* mpt; } ;
struct TYPE_6__ {unsigned long msi_cap_offset; } ;
struct TYPE_7__ {TYPE_2__ device_info; } ;
struct TYPE_5__ {int (* inject_msi ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int MSI_CAP_EN ; 
 scalar_t__ FUNC4 (int,char*) ; 
 TYPE_4__ intel_gvt_host ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct intel_vgpu*) ; 

__attribute__((used)) static inline int FUNC8(struct intel_vgpu *vgpu)
{
	unsigned long offset = vgpu->gvt->device_info.msi_cap_offset;
	u16 control, data;
	u32 addr;
	int ret;

	control = *(u16 *)(FUNC7(vgpu) + FUNC2(offset));
	addr = *(u32 *)(FUNC7(vgpu) + FUNC1(offset));
	data = *(u16 *)(FUNC7(vgpu) + FUNC3(offset));

	/* Do not generate MSI if MSIEN is disable */
	if (!(control & MSI_CAP_EN))
		return 0;

	if (FUNC4(control & FUNC0(15, 1), "only support one MSI format\n"))
		return -EINVAL;

	FUNC6(vgpu->id, addr, data);

	ret = intel_gvt_host.mpt->inject_msi(vgpu->handle, addr, data);
	if (ret)
		return ret;
	return 0;
}