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
struct msm_gem_submit {int /*<<< orphan*/  queue; int /*<<< orphan*/  pid; int /*<<< orphan*/  node; int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gem_submit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct msm_gem_submit *submit)
{
	FUNC0(submit->fence);
	FUNC2(&submit->node);
	FUNC4(submit->pid);
	FUNC3(submit->queue);

	FUNC1(submit);
}