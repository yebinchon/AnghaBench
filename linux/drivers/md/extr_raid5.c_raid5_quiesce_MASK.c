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
struct r5conf {int quiesce; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  wait_for_quiescent; int /*<<< orphan*/  active_aligned_reads; int /*<<< orphan*/  active_stripes; } ;
struct mddev {struct r5conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r5conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mddev *mddev, int quiesce)
{
	struct r5conf *conf = mddev->private;

	if (quiesce) {
		/* stop all writes */
		FUNC1(conf);
		/* '2' tells resync/reshape to pause so that all
		 * active stripes can drain
		 */
		FUNC3(conf, INT_MAX);
		conf->quiesce = 2;
		FUNC5(conf->wait_for_quiescent,
				    FUNC0(&conf->active_stripes) == 0 &&
				    FUNC0(&conf->active_aligned_reads) == 0,
				    FUNC4(conf),
				    FUNC1(conf));
		conf->quiesce = 1;
		FUNC4(conf);
		/* allow reshape to continue */
		FUNC6(&conf->wait_for_overlap);
	} else {
		/* re-enable writes */
		FUNC1(conf);
		conf->quiesce = 0;
		FUNC6(&conf->wait_for_quiescent);
		FUNC6(&conf->wait_for_overlap);
		FUNC4(conf);
	}
	FUNC2(conf, quiesce);
}