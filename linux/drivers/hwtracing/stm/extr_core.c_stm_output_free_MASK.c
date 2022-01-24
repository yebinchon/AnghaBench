#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm_output {int /*<<< orphan*/  lock; scalar_t__ nr_chans; } ;
struct stm_device {int /*<<< orphan*/  mc_lock; TYPE_1__* pdrv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* output_close ) (struct stm_output*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stm_device*,struct stm_output*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm_output*) ; 

__attribute__((used)) static void FUNC4(struct stm_device *stm, struct stm_output *output)
{
	FUNC0(&stm->mc_lock);
	FUNC0(&output->lock);
	if (output->nr_chans)
		FUNC2(stm, output);
	if (stm->pdrv && stm->pdrv->output_close)
		stm->pdrv->output_close(output);
	FUNC1(&output->lock);
	FUNC1(&stm->mc_lock);
}