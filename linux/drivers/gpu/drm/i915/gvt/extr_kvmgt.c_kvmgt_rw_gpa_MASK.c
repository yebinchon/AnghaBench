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
struct kvmgt_guest_info {struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  mm; int /*<<< orphan*/  srcu; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mm; } ;

/* Variables and functions */
 int EFAULT ; 
 int ESRCH ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct kvm*,unsigned long,void*,unsigned long) ; 
 int FUNC2 (struct kvm*,unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(unsigned long handle, unsigned long gpa,
			void *buf, unsigned long len, bool write)
{
	struct kvmgt_guest_info *info;
	struct kvm *kvm;
	int idx, ret;
	bool kthread = current->mm == NULL;

	if (!FUNC0(handle))
		return -ESRCH;

	info = (struct kvmgt_guest_info *)handle;
	kvm = info->kvm;

	if (kthread) {
		if (!FUNC3(kvm->mm))
			return -EFAULT;
		FUNC8(kvm->mm);
	}

	idx = FUNC5(&kvm->srcu);
	ret = write ? FUNC2(kvm, gpa, buf, len) :
		      FUNC1(kvm, gpa, buf, len);
	FUNC6(&kvm->srcu, idx);

	if (kthread) {
		FUNC7(kvm->mm);
		FUNC4(kvm->mm);
	}

	return ret;
}