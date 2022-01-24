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
struct cyapa_pip_cmd_states {int /*<<< orphan*/  pm_stage_lock; int /*<<< orphan*/  pm_stage; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYAPA_PM_DEACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cyapa *cyapa)
{
	struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;

	/* Indicates the pip->pm_stage is not valid. */
	FUNC0(&pip->pm_stage_lock);
	pip->pm_stage = CYAPA_PM_DEACTIVE;
	FUNC1(&pip->pm_stage_lock);
}