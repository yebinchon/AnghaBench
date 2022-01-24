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
struct TYPE_2__ {int /*<<< orphan*/  core_clk; int /*<<< orphan*/  iface_clk; int /*<<< orphan*/  bus_clk; } ;

/* Variables and functions */
 TYPE_1__* __scm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;

	ret = FUNC1(__scm->core_clk);
	if (ret)
		goto bail;

	ret = FUNC1(__scm->iface_clk);
	if (ret)
		goto disable_core;

	ret = FUNC1(__scm->bus_clk);
	if (ret)
		goto disable_iface;

	return 0;

disable_iface:
	FUNC0(__scm->iface_clk);
disable_core:
	FUNC0(__scm->core_clk);
bail:
	return ret;
}