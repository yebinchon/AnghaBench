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
struct kvmgt_guest_info {struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct kvm*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC4(unsigned long handle, unsigned long gfn)
{
	struct kvmgt_guest_info *info;
	struct kvm *kvm;
	int idx;
	bool ret;

	if (!FUNC0(handle))
		return false;

	info = (struct kvmgt_guest_info *)handle;
	kvm = info->kvm;

	idx = FUNC2(&kvm->srcu);
	ret = FUNC1(kvm, gfn);
	FUNC3(&kvm->srcu, idx);

	return ret;
}