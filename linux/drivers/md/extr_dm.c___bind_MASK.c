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
struct request_queue {int dummy; } ;
struct queue_limits {int dummy; } ;
struct mapped_device {scalar_t__ type; int /*<<< orphan*/  immutable_target_type; int /*<<< orphan*/  map; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  immutable_target; int /*<<< orphan*/  geometry; struct request_queue* queue; } ;
struct dm_table {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ DM_TYPE_NVME_BIO_BASED ; 
 struct dm_table* FUNC0 (int) ; 
 int FUNC1 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*,int /*<<< orphan*/ ,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_table*) ; 
 scalar_t__ FUNC9 (struct dm_table*) ; 
 int FUNC10 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_table*,struct request_queue*,struct queue_limits*) ; 
 int /*<<< orphan*/  event_callback ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*) ; 
 struct dm_table* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_table *FUNC17(struct mapped_device *md, struct dm_table *t,
			       struct queue_limits *limits)
{
	struct dm_table *old_map;
	struct request_queue *q = md->queue;
	bool request_based = FUNC10(t);
	sector_t size;
	int ret;

	FUNC12(&md->suspend_lock);

	size = FUNC9(t);

	/*
	 * Wipe any geometry if the size of the table changed.
	 */
	if (size != FUNC3(md))
		FUNC14(&md->geometry, 0, sizeof(md->geometry));

	FUNC2(md, size);

	FUNC6(t, event_callback, md);

	/*
	 * The queue hasn't been stopped yet, if the old table type wasn't
	 * for request-based during suspension.  So stop it to prevent
	 * I/O mapping before resume.
	 * This must be done before setting the queue restrictions,
	 * because request-based dm may be run just after the setting.
	 */
	if (request_based)
		FUNC4(q);

	if (request_based || md->type == DM_TYPE_NVME_BIO_BASED) {
		/*
		 * Leverage the fact that request-based DM targets and
		 * NVMe bio based targets are immutable singletons
		 * - used to optimize both dm_request_fn and dm_mq_queue_rq;
		 *   and __process_bio.
		 */
		md->immutable_target = FUNC7(t);
	}

	ret = FUNC1(md, t);
	if (ret) {
		old_map = FUNC0(ret);
		goto out;
	}

	old_map = FUNC16(md->map, FUNC13(&md->suspend_lock));
	FUNC15(md->map, (void *)t);
	md->immutable_target_type = FUNC8(t);

	FUNC11(t, q, limits);
	if (old_map)
		FUNC5(md);

out:
	return old_map;
}