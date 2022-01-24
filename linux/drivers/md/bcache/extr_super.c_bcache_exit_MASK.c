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

/* Variables and functions */
 scalar_t__ bcache_kobj ; 
 scalar_t__ bcache_major ; 
 scalar_t__ bcache_wq ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ bch_journal_wq ; 
 int /*<<< orphan*/  bch_register_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reboot ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	FUNC0();
	FUNC1();
	if (bcache_kobj)
		FUNC3(bcache_kobj);
	if (bcache_wq)
		FUNC2(bcache_wq);
	if (bch_journal_wq)
		FUNC2(bch_journal_wq);

	if (bcache_major)
		FUNC5(bcache_major, "bcache");
	FUNC6(&reboot);
	FUNC4(&bch_register_lock);
}