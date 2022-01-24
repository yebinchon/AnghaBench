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
typedef  int /*<<< orphan*/  uint8_t ;
struct kfd_signal_page {int need_to_free_pages; void* kernel_address; } ;
struct kfd_process {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KFD_SIGNAL_EVENT_LIMIT ; 
 scalar_t__ UNSIGNALED_EVENT_SLOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_signal_page*) ; 
 struct kfd_signal_page* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct kfd_signal_page*,struct kfd_process*) ; 

__attribute__((used)) static struct kfd_signal_page *FUNC6(struct kfd_process *p)
{
	void *backing_store;
	struct kfd_signal_page *page;

	page = FUNC3(sizeof(*page), GFP_KERNEL);
	if (!page)
		return NULL;

	backing_store = (void *) FUNC0(GFP_KERNEL,
					FUNC1(KFD_SIGNAL_EVENT_LIMIT * 8));
	if (!backing_store)
		goto fail_alloc_signal_store;

	/* Initialize all events to unsignaled */
	FUNC4(backing_store, (uint8_t) UNSIGNALED_EVENT_SLOT,
	       KFD_SIGNAL_EVENT_LIMIT * 8);

	page->kernel_address = backing_store;
	page->need_to_free_pages = true;
	FUNC5("Allocated new event signal page at %p, for process %p\n",
			page, p);

	return page;

fail_alloc_signal_store:
	FUNC2(page);
	return NULL;
}