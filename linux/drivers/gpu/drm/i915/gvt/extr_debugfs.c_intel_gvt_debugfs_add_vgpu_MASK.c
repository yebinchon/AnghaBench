#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu {int id; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  active; TYPE_1__* gvt; } ;
struct TYPE_2__ {int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct intel_vgpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  vgpu_mmio_diff_fops ; 
 int /*<<< orphan*/  vgpu_scan_nonprivbb_fops ; 

void FUNC4(struct intel_vgpu *vgpu)
{
	char name[16] = "";

	FUNC3(name, 16, "vgpu%d", vgpu->id);
	vgpu->debugfs = FUNC1(name, vgpu->gvt->debugfs_root);

	FUNC0("active", 0444, vgpu->debugfs, &vgpu->active);
	FUNC2("mmio_diff", 0444, vgpu->debugfs, vgpu,
			    &vgpu_mmio_diff_fops);
	FUNC2("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
			    &vgpu_scan_nonprivbb_fops);
}