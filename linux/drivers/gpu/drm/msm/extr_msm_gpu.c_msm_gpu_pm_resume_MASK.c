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
struct msm_gpu {int needs_hw_init; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct msm_gpu*) ; 
 int FUNC2 (struct msm_gpu*) ; 
 int FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*) ; 

int FUNC5(struct msm_gpu *gpu)
{
	int ret;

	FUNC0("%s", gpu->name);

	ret = FUNC3(gpu);
	if (ret)
		return ret;

	ret = FUNC2(gpu);
	if (ret)
		return ret;

	ret = FUNC1(gpu);
	if (ret)
		return ret;

	FUNC4(gpu);

	gpu->needs_hw_init = true;

	return 0;
}