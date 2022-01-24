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
struct request {int dummy; } ;
struct mapped_device {int /*<<< orphan*/  stats; } ;
struct dm_rq_target_io {int /*<<< orphan*/  stats_aux; int /*<<< orphan*/  n_sectors; int /*<<< orphan*/  duration_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 struct dm_rq_target_io* FUNC7 (struct request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mapped_device *md, struct request *orig)
{
	FUNC0(orig);

	if (FUNC8(FUNC5(&md->stats))) {
		struct dm_rq_target_io *tio = FUNC7(orig);
		tio->duration_jiffies = jiffies;
		tio->n_sectors = FUNC2(orig);
		FUNC4(&md->stats, FUNC6(orig),
				    FUNC1(orig), tio->n_sectors, false, 0,
				    &tio->stats_aux);
	}

	/*
	 * Hold the md reference here for the in-flight I/O.
	 * We can't rely on the reference count by device opener,
	 * because the device may be closed during the request completion
	 * when all bios are completed.
	 * See the comment in rq_completed() too.
	 */
	FUNC3(md);
}