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
struct mapped_device {int /*<<< orphan*/  queue; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 

__attribute__((used)) static int FUNC5(struct mapped_device *md, struct dm_table *map)
{
	if (map) {
		int r = FUNC3(map);
		if (r)
			return r;
	}

	FUNC0(md);

	/*
	 * Flushing deferred I/Os must be done after targets are resumed
	 * so that mapping of targets can work correctly.
	 * Request-based dm is queueing the deferred I/Os in its request_queue.
	 */
	if (FUNC1(md))
		FUNC2(md->queue);

	FUNC4(md);

	return 0;
}