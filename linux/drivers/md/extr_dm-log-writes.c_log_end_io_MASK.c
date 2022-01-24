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
struct log_writes_c {int logging_enabled; int /*<<< orphan*/  blocks_lock; } ;
struct bio {scalar_t__ bi_status; struct log_writes_c* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct log_writes_c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct bio *bio)
{
	struct log_writes_c *lc = bio->bi_private;

	if (bio->bi_status) {
		unsigned long flags;

		FUNC0("Error writing log block, error=%d", bio->bi_status);
		FUNC4(&lc->blocks_lock, flags);
		lc->logging_enabled = false;
		FUNC5(&lc->blocks_lock, flags);
	}

	FUNC1(bio);
	FUNC3(lc);
	FUNC2(bio);
}