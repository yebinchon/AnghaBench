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
struct dm_rq_target_io {int /*<<< orphan*/  stats_aux; scalar_t__ duration_jiffies; int /*<<< orphan*/  n_sectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 struct dm_rq_target_io* FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mapped_device *md, struct request *orig)
{
	if (FUNC5(FUNC2(&md->stats))) {
		struct dm_rq_target_io *tio = FUNC4(orig);
		tio->duration_jiffies = jiffies - tio->duration_jiffies;
		FUNC1(&md->stats, FUNC3(orig),
				    FUNC0(orig), tio->n_sectors, true,
				    tio->duration_jiffies, &tio->stats_aux);
	}
}