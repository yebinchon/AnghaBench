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
struct r1conf {int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_sync_pending; int /*<<< orphan*/ * barrier; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r1conf *conf, sector_t sector_nr)
{
	int idx = FUNC3(sector_nr);

	FUNC0(FUNC2(&conf->barrier[idx]) <= 0);

	FUNC1(&conf->barrier[idx]);
	FUNC1(&conf->nr_sync_pending);
	FUNC4(&conf->wait_barrier);
}