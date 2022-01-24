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
struct TYPE_2__ {int /*<<< orphan*/  position; int /*<<< orphan*/  channel; } ;
struct tegra_ivc {TYPE_1__ tx; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (struct tegra_ivc*) ; 
 void* FUNC2 (struct tegra_ivc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC3(struct tegra_ivc *ivc)
{
	int err;

	err = FUNC1(ivc);
	if (err < 0)
		return FUNC0(err);

	return FUNC2(ivc, ivc->tx.channel, ivc->tx.position);
}