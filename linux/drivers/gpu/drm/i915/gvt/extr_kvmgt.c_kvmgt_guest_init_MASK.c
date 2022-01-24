#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mdev_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  track_flush_slot; int /*<<< orphan*/  track_write; } ;
struct kvmgt_guest_info {int /*<<< orphan*/  debugfs_cache_entries; TYPE_2__ track_node; struct kvm* kvm; struct intel_vgpu* vgpu; } ;
struct kvm {scalar_t__ mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_cache_entries; struct kvm* kvm; } ;
struct intel_vgpu {unsigned long handle; TYPE_1__ vdev; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  vblank_done; } ;
struct TYPE_6__ {scalar_t__ mm; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int ESRCH ; 
 scalar_t__ FUNC0 (struct intel_vgpu*,struct kvm*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,TYPE_2__*) ; 
 int /*<<< orphan*/  kvmgt_page_track_flush_slot ; 
 int /*<<< orphan*/  kvmgt_page_track_write ; 
 int /*<<< orphan*/  FUNC8 (struct kvmgt_guest_info*) ; 
 struct intel_vgpu* FUNC9 (struct mdev_device*) ; 
 struct kvmgt_guest_info* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct mdev_device *mdev)
{
	struct kvmgt_guest_info *info;
	struct intel_vgpu *vgpu;
	struct kvm *kvm;

	vgpu = FUNC9(mdev);
	if (FUNC4(vgpu->handle))
		return -EEXIST;

	kvm = vgpu->vdev.kvm;
	if (!kvm || kvm->mm != current->mm) {
		FUNC3("KVM is required to use Intel vGPU\n");
		return -ESRCH;
	}

	if (FUNC0(vgpu, kvm))
		return -EEXIST;

	info = FUNC10(sizeof(struct kvmgt_guest_info));
	if (!info)
		return -ENOMEM;

	vgpu->handle = (unsigned long)info;
	info->vgpu = vgpu;
	info->kvm = kvm;
	FUNC6(info->kvm);

	FUNC8(info);
	FUNC2(vgpu);

	FUNC5(&vgpu->vblank_done);

	info->track_node.track_write = kvmgt_page_track_write;
	info->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
	FUNC7(kvm, &info->track_node);

	info->debugfs_cache_entries = FUNC1(
						"kvmgt_nr_cache_entries",
						0444, vgpu->debugfs,
						&vgpu->vdev.nr_cache_entries);
	return 0;
}