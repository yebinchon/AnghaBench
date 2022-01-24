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
struct r5conf {int chunk_sectors; int /*<<< orphan*/  log; int /*<<< orphan*/  r5c_cached_full_stripes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int STRIPE_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct r5conf *conf)
{
	if (!FUNC3(conf->log))
		return;

	/*
	 * wake up reclaim for R5C_FULL_STRIPE_FLUSH_BATCH cached stripes
	 * or a full stripe (chunk size / 4k stripes).
	 */
	if (FUNC1(&conf->r5c_cached_full_stripes) >=
	    FUNC2(FUNC0(conf),
		conf->chunk_sectors >> STRIPE_SHIFT))
		FUNC4(conf->log, 0);
}