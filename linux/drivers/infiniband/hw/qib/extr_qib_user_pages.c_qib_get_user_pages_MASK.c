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
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  pinned_vm; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int ENOMEM ; 
 int FOLL_FORCE ; 
 int FOLL_LONGTERM ; 
 int FOLL_WRITE ; 
 unsigned long PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct page**,size_t,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned long,size_t,int,struct page**,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(unsigned long start_page, size_t num_pages,
		       struct page **p)
{
	unsigned long locked, lock_limit;
	size_t got;
	int ret;

	lock_limit = FUNC6(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	locked = FUNC1(num_pages, &current->mm->pinned_vm);

	if (locked > lock_limit && !FUNC3(CAP_IPC_LOCK)) {
		ret = -ENOMEM;
		goto bail;
	}

	FUNC4(&current->mm->mmap_sem);
	for (got = 0; got < num_pages; got += ret) {
		ret = FUNC5(start_page + got * PAGE_SIZE,
				     num_pages - got,
				     FOLL_LONGTERM | FOLL_WRITE | FOLL_FORCE,
				     p + got, NULL);
		if (ret < 0) {
			FUNC7(&current->mm->mmap_sem);
			goto bail_release;
		}
	}
	FUNC7(&current->mm->mmap_sem);

	return 0;
bail_release:
	FUNC0(p, got, 0);
bail:
	FUNC2(num_pages, &current->mm->pinned_vm);
	return ret;
}