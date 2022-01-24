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
struct cyapa_pip_cmd_states {int pm_stage; int /*<<< orphan*/  pm_stage_lock; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;
typedef  enum cyapa_pm_stage { ____Placeholder_cyapa_pm_stage } cyapa_pm_stage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cyapa *cyapa,
				   enum cyapa_pm_stage pm_stage)
{
	struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;

	FUNC0(&pip->pm_stage_lock);
	pip->pm_stage = pm_stage;
	FUNC1(&pip->pm_stage_lock);
}