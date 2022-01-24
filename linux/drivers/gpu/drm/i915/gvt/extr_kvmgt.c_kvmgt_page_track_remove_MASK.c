#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct kvmgt_guest_info {struct kvm* kvm; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int /*<<< orphan*/  srcu; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_PAGE_TRACK_WRITE ; 
 struct kvm_memory_slot* FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_memory_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmgt_guest_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmgt_guest_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(unsigned long handle, u64 gfn)
{
	struct kvmgt_guest_info *info;
	struct kvm *kvm;
	struct kvm_memory_slot *slot;
	int idx;

	if (!FUNC1(handle))
		return 0;

	info = (struct kvmgt_guest_info *)handle;
	kvm = info->kvm;

	idx = FUNC7(&kvm->srcu);
	slot = FUNC0(kvm, gfn);
	if (!slot) {
		FUNC8(&kvm->srcu, idx);
		return -EINVAL;
	}

	FUNC5(&kvm->mmu_lock);

	if (!FUNC3(info, gfn))
		goto out;

	FUNC2(kvm, slot, gfn, KVM_PAGE_TRACK_WRITE);
	FUNC4(info, gfn);

out:
	FUNC6(&kvm->mmu_lock);
	FUNC8(&kvm->srcu, idx);
	return 0;
}