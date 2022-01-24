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
struct kvmgt_guest_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * kvm; int /*<<< orphan*/  group_notifier; int /*<<< orphan*/  mdev; int /*<<< orphan*/  iommu_notifier; int /*<<< orphan*/  released; } ;
struct intel_vgpu {scalar_t__ handle; TYPE_1__ vdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* vgpu_release ) (struct intel_vgpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VFIO_GROUP_NOTIFY ; 
 int /*<<< orphan*/  VFIO_IOMMU_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__* intel_gvt_ops ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmgt_guest_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct intel_vgpu *vgpu)
{
	struct kvmgt_guest_info *info;
	int ret;

	if (!FUNC2(vgpu->handle))
		return;

	if (FUNC1(&vgpu->vdev.released, 0, 1))
		return;

	intel_gvt_ops->vgpu_release(vgpu);

	ret = FUNC8(FUNC5(vgpu->vdev.mdev), VFIO_IOMMU_NOTIFY,
					&vgpu->vdev.iommu_notifier);
	FUNC0(ret, "vfio_unregister_notifier for iommu failed: %d\n", ret);

	ret = FUNC8(FUNC5(vgpu->vdev.mdev), VFIO_GROUP_NOTIFY,
					&vgpu->vdev.group_notifier);
	FUNC0(ret, "vfio_unregister_notifier for group failed: %d\n", ret);

	/* dereference module reference taken at open */
	FUNC6(THIS_MODULE);

	info = (struct kvmgt_guest_info *)vgpu->handle;
	FUNC4(info);

	FUNC3(vgpu);

	vgpu->vdev.kvm = NULL;
	vgpu->handle = 0;
}