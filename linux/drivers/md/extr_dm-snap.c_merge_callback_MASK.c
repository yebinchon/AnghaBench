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
struct dm_snapshot {int merge_failed; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_merging_chunks; TYPE_2__* store; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {scalar_t__ (* commit_merge ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct bio* FUNC1 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_snapshot*) ; 
 scalar_t__ FUNC5 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_snapshot*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(int read_err, unsigned long write_err, void *context)
{
	struct dm_snapshot *s = context;
	struct bio *b = NULL;

	if (read_err || write_err) {
		if (read_err)
			FUNC0("Read error: shutting down merge.");
		else
			FUNC0("Write error: shutting down merge.");
		goto shut;
	}

	if (s->store->type->commit_merge(s->store,
					 s->num_merging_chunks) < 0) {
		FUNC0("Write error in exception store: shutting down merge");
		goto shut;
	}

	if (FUNC5(s) < 0)
		goto shut;

	FUNC6(s);

	return;

shut:
	FUNC2(&s->lock);
	s->merge_failed = 1;
	b = FUNC1(s);
	FUNC8(&s->lock);
	FUNC3(b);

	FUNC4(s);
}