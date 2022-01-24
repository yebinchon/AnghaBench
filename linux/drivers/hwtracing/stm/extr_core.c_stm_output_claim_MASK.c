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
struct stp_master {scalar_t__ nr_free; int /*<<< orphan*/ * chan_map; } ;
struct stm_output {scalar_t__ nr_chans; int /*<<< orphan*/  channel; int /*<<< orphan*/  lock; int /*<<< orphan*/  master; } ;
struct stm_device {int /*<<< orphan*/  mc_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stp_master* FUNC4 (struct stm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct stm_device *stm, struct stm_output *output)
{
	struct stp_master *master = FUNC4(stm, output->master);

	FUNC3(&stm->mc_lock);
	FUNC3(&output->lock);

	if (FUNC0(master->nr_free < output->nr_chans))
		return;

	FUNC1(&master->chan_map[0], output->channel,
			       FUNC2(output->nr_chans));

	master->nr_free -= output->nr_chans;
}