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
struct c4iw_ucontext {int /*<<< orphan*/  mmap_lock; int /*<<< orphan*/  mmaps; } ;
struct c4iw_mm_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/  len; scalar_t__ addr; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct c4iw_ucontext *ucontext,
			       struct c4iw_mm_entry *mm)
{
	FUNC2(&ucontext->mmap_lock);
	FUNC1("key 0x%x addr 0x%llx len %d\n",
		 mm->key, (unsigned long long)mm->addr, mm->len);
	FUNC0(&mm->entry, &ucontext->mmaps);
	FUNC3(&ucontext->mmap_lock);
}