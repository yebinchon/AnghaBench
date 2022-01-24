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
struct sun6i_drc {int /*<<< orphan*/  reset; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  mod_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun6i_drc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			    void *data)
{
	struct sun6i_drc *drc = FUNC1(dev);

	FUNC0(drc->mod_clk);
	FUNC0(drc->bus_clk);
	FUNC2(drc->reset);
}