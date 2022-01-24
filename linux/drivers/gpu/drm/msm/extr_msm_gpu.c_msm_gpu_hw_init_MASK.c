#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_gpu {int needs_hw_init; int /*<<< orphan*/  irq; TYPE_2__* funcs; TYPE_1__* dev; } ;
struct TYPE_4__ {int (* hw_init ) (struct msm_gpu*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct msm_gpu*) ; 

int FUNC5(struct msm_gpu *gpu)
{
	int ret;

	FUNC0(!FUNC3(&gpu->dev->struct_mutex));

	if (!gpu->needs_hw_init)
		return 0;

	FUNC1(gpu->irq);
	ret = gpu->funcs->hw_init(gpu);
	if (!ret)
		gpu->needs_hw_init = false;
	FUNC2(gpu->irq);

	return ret;
}