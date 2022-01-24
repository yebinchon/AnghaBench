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
struct pstore {int valid; int /*<<< orphan*/  metadata_wq; int /*<<< orphan*/ * callbacks; int /*<<< orphan*/  pending_count; scalar_t__ callback_count; scalar_t__ current_committed; scalar_t__ next_free; int /*<<< orphan*/ * header_area; int /*<<< orphan*/ * zero_area; int /*<<< orphan*/ * area; int /*<<< orphan*/  version; struct dm_exception_store* store; } ;
struct dm_exception_store {int userspace_supports_overflow; struct pstore* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NUM_SNAPSHOT_HDR_CHUNKS ; 
 int /*<<< orphan*/  SNAPSHOT_DISK_VERSION ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pstore*) ; 
 struct pstore* FUNC5 (int,int /*<<< orphan*/ ) ; 
 char FUNC6 (char) ; 

__attribute__((used)) static int FUNC7(struct dm_exception_store *store, char *options)
{
	struct pstore *ps;
	int r;

	/* allocate the pstore */
	ps = FUNC5(sizeof(*ps), GFP_KERNEL);
	if (!ps)
		return -ENOMEM;

	ps->store = store;
	ps->valid = 1;
	ps->version = SNAPSHOT_DISK_VERSION;
	ps->area = NULL;
	ps->zero_area = NULL;
	ps->header_area = NULL;
	ps->next_free = NUM_SNAPSHOT_HDR_CHUNKS + 1; /* header and 1st area */
	ps->current_committed = 0;

	ps->callback_count = 0;
	FUNC2(&ps->pending_count, 0);
	ps->callbacks = NULL;

	ps->metadata_wq = FUNC1("ksnaphd", WQ_MEM_RECLAIM, 0);
	if (!ps->metadata_wq) {
		FUNC0("couldn't start header metadata update thread");
		r = -ENOMEM;
		goto err_workqueue;
	}

	if (options) {
		char overflow = FUNC6(options[0]);
		if (overflow == 'O')
			store->userspace_supports_overflow = true;
		else {
			FUNC0("Unsupported persistent store option: %s", options);
			r = -EINVAL;
			goto err_options;
		}
	}

	store->context = ps;

	return 0;

err_options:
	FUNC3(ps->metadata_wq);
err_workqueue:
	FUNC4(ps);

	return r;
}