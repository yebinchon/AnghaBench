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
struct TYPE_2__ {int /*<<< orphan*/  position; int /*<<< orphan*/  channel; int /*<<< orphan*/  phys; } ;
struct tegra_ivc {TYPE_1__ rx; int /*<<< orphan*/  frame_size; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct tegra_ivc*) ; 
 void* FUNC4 (struct tegra_ivc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_ivc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC6(struct tegra_ivc *ivc)
{
	int err;

	if (FUNC1(ivc == NULL))
		return FUNC0(-EINVAL);

	err = FUNC3(ivc);
	if (err < 0)
		return FUNC0(err);

	/*
	 * Order observation of ivc->rx.position potentially indicating new
	 * data before data read.
	 */
	FUNC2();

	FUNC5(ivc, ivc->rx.phys, ivc->rx.position, 0,
				   ivc->frame_size);

	return FUNC4(ivc, ivc->rx.channel, ivc->rx.position);
}