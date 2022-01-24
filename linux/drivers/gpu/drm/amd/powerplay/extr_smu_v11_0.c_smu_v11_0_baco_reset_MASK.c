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
struct smu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACO_SEQ_BACO ; 
 int /*<<< orphan*/  SMU_BACO_STATE_ENTER ; 
 int /*<<< orphan*/  SMU_BACO_STATE_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu)
{
	int ret = 0;

	ret = FUNC1(smu, BACO_SEQ_BACO);
	if (ret)
		return ret;

	ret = FUNC2(smu, SMU_BACO_STATE_ENTER);
	if (ret)
		return ret;

	FUNC0(10);

	ret = FUNC2(smu, SMU_BACO_STATE_EXIT);
	if (ret)
		return ret;

	return ret;
}