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
typedef  scalar_t__ u64 ;
struct qedr_ucontext {int /*<<< orphan*/  dev; int /*<<< orphan*/  mm_list_lock; int /*<<< orphan*/  mm_head; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ phy_addr; } ;
struct qedr_mm {TYPE_1__ key; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long,unsigned long,struct qedr_ucontext*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  QEDR_MSG_MISC ; 
 struct qedr_mm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct qedr_ucontext *uctx, u64 phy_addr,
			 unsigned long len)
{
	struct qedr_mm *mm;

	mm = FUNC2(sizeof(*mm), GFP_KERNEL);
	if (!mm)
		return -ENOMEM;

	mm->key.phy_addr = phy_addr;
	/* This function might be called with a length which is not a multiple
	 * of PAGE_SIZE, while the mapping is PAGE_SIZE grained and the kernel
	 * forces this granularity by increasing the requested size if needed.
	 * When qedr_mmap is called, it will search the list with the updated
	 * length as a key. To prevent search failures, the length is rounded up
	 * in advance to PAGE_SIZE.
	 */
	mm->key.len = FUNC6(len, PAGE_SIZE);
	FUNC1(&mm->entry);

	FUNC4(&uctx->mm_list_lock);
	FUNC3(&mm->entry, &uctx->mm_head);
	FUNC5(&uctx->mm_list_lock);

	FUNC0(uctx->dev, QEDR_MSG_MISC,
		 "added (addr=0x%llx,len=0x%lx) for ctx=%p\n",
		 (unsigned long long)mm->key.phy_addr,
		 (unsigned long)mm->key.len, uctx);

	return 0;
}