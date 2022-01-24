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
struct msm_gpu {TYPE_1__* funcs; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct msm_gpu*) ;} ;

/* Variables and functions */
 struct msm_gpu* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
		void *data)
{
	struct msm_gpu *gpu = FUNC0(dev);

	FUNC1(dev);
	gpu->funcs->destroy(gpu);

	FUNC2(FUNC0(master), NULL);
}