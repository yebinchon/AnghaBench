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
struct TYPE_2__ {int /*<<< orphan*/  devfreq; } ;
struct msm_gpu {TYPE_1__ devfreq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct msm_gpu*) ; 
 int FUNC3 (struct msm_gpu*) ; 
 int FUNC4 (struct msm_gpu*) ; 

int FUNC5(struct msm_gpu *gpu)
{
	int ret;

	FUNC0("%s", gpu->name);

	FUNC1(gpu->devfreq.devfreq);

	ret = FUNC2(gpu);
	if (ret)
		return ret;

	ret = FUNC3(gpu);
	if (ret)
		return ret;

	ret = FUNC4(gpu);
	if (ret)
		return ret;

	return 0;
}