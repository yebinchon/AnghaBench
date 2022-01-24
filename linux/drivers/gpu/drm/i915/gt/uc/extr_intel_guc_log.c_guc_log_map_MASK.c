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
struct TYPE_4__ {void* buf_addr; int /*<<< orphan*/  lock; } ;
struct intel_guc_log {TYPE_2__ relay; TYPE_1__* vma; } ;
struct TYPE_3__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I915_MAP_WC ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct intel_guc_log *log)
{
	void *vaddr;

	FUNC3(&log->relay.lock);

	if (!log->vma)
		return -ENODEV;

	/*
	 * Create a WC (Uncached for read) vmalloc mapping of log
	 * buffer pages, so that we can directly get the data
	 * (up-to-date) from memory.
	 */
	vaddr = FUNC2(log->vma->obj, I915_MAP_WC);
	if (FUNC0(vaddr))
		return FUNC1(vaddr);

	log->relay.buf_addr = vaddr;

	return 0;
}