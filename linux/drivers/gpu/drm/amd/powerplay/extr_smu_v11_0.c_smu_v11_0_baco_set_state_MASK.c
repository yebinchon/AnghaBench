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
struct smu_baco_context {int state; int /*<<< orphan*/  mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; } ;
typedef  enum smu_baco_state { ____Placeholder_smu_baco_state } smu_baco_state ;

/* Variables and functions */
 int /*<<< orphan*/  BACO_SEQ_BACO ; 
 int SMU_BACO_STATE_ENTER ; 
 int /*<<< orphan*/  SMU_MSG_EnterBaco ; 
 int /*<<< orphan*/  SMU_MSG_ExitBaco ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smu_context*) ; 

__attribute__((used)) static int FUNC5(struct smu_context *smu, enum smu_baco_state state)
{

	struct smu_baco_context *smu_baco = &smu->smu_baco;
	int ret = 0;

	if (FUNC4(smu) == state)
		return 0;

	FUNC0(&smu_baco->mutex);

	if (state == SMU_BACO_STATE_ENTER)
		ret = FUNC3(smu, SMU_MSG_EnterBaco, BACO_SEQ_BACO);
	else
		ret = FUNC2(smu, SMU_MSG_ExitBaco);
	if (ret)
		goto out;

	smu_baco->state = state;
out:
	FUNC1(&smu_baco->mutex);
	return ret;
}