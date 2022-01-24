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
struct mapped_device {int /*<<< orphan*/  holders; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_FREEING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINOR_ALLOCED ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*) ; 
 struct dm_table* FUNC8 (struct mapped_device*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC15 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct mapped_device *md, bool wait)
{
	struct dm_table *map;
	int srcu_idx;

	FUNC17();

	FUNC22(&_minor_lock);
	FUNC16(&_minor_idr, MINOR_ALLOCED, FUNC1(FUNC5(FUNC7(md))));
	FUNC21(DMF_FREEING, &md->flags);
	FUNC23(&_minor_lock);

	FUNC4(md->queue);

	/*
	 * Take suspend_lock so that presuspend and postsuspend methods
	 * do not race with internal suspend.
	 */
	FUNC19(&md->suspend_lock);
	map = FUNC8(md, &srcu_idx);
	if (!FUNC10(md)) {
		FUNC14(map);
		FUNC13(map);
	}
	/* dm_put_live_table must be before msleep, otherwise deadlock is possible */
	FUNC9(md, srcu_idx);
	FUNC20(&md->suspend_lock);

	/*
	 * Rare, but there may be I/O requests still going to complete,
	 * for example.  Wait for all references to disappear.
	 * No one should increment the reference count of the mapped_device,
	 * after the mapped_device state becomes DMF_FREEING.
	 */
	if (wait)
		while (FUNC3(&md->holders))
			FUNC18(1);
	else if (FUNC3(&md->holders))
		FUNC0("%s: Forcibly removing mapped_device still in use! (%d users)",
		       FUNC6(md), FUNC3(&md->holders));

	FUNC11(md);
	FUNC12(FUNC2(md));
	FUNC15(md);
}