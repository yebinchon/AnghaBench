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
struct dm_snapshot {int /*<<< orphan*/  complete; } ;
struct dm_exception_table_lock {int dummy; } ;
struct dm_exception {void* new_chunk; void* old_chunk; } ;
typedef  void* chunk_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_exception* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snapshot*,void*,struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dm_exception*) ; 

__attribute__((used)) static int FUNC5(void *context, chunk_t old, chunk_t new)
{
	struct dm_exception_table_lock lock;
	struct dm_snapshot *s = context;
	struct dm_exception *e;

	e = FUNC0(GFP_KERNEL);
	if (!e)
		return -ENOMEM;

	e->old_chunk = old;

	/* Consecutive_count is implicitly initialised to zero */
	e->new_chunk = new;

	/*
	 * Although there is no need to lock access to the exception tables
	 * here, if we don't then hlist_bl_add_head(), called by
	 * dm_insert_exception(), will complain about accessing the
	 * corresponding list without locking it first.
	 */
	FUNC2(s, old, &lock);

	FUNC1(&lock);
	FUNC4(&s->complete, e);
	FUNC3(&lock);

	return 0;
}