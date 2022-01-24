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
struct r5conf {int min_nr_stripes; int /*<<< orphan*/  log; int /*<<< orphan*/  empty_inactive_list_nr; int /*<<< orphan*/  r5c_cached_full_stripes; int /*<<< orphan*/  r5c_cached_partial_stripes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct r5conf *conf)
{
	int total_cached;

	if (!FUNC1(conf->log))
		return;

	total_cached = FUNC0(&conf->r5c_cached_partial_stripes) +
		FUNC0(&conf->r5c_cached_full_stripes);

	/*
	 * The following condition is true for either of the following:
	 *   - stripe cache pressure high:
	 *          total_cached > 3/4 min_nr_stripes ||
	 *          empty_inactive_list_nr > 0
	 *   - stripe cache pressure moderate:
	 *          total_cached > 1/2 min_nr_stripes
	 */
	if (total_cached > conf->min_nr_stripes * 1 / 2 ||
	    FUNC0(&conf->empty_inactive_list_nr) > 0)
		FUNC2(conf->log, 0);
}