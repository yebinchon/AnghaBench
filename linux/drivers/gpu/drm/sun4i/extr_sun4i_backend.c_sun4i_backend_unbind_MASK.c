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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct sun4i_backend {int /*<<< orphan*/  reset; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  mod_clk; int /*<<< orphan*/  ram_clk; TYPE_1__ engine; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun4i_backend* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev, struct device *master,
				 void *data)
{
	struct sun4i_backend *backend = FUNC1(dev);

	FUNC2(&backend->engine.list);

	if (FUNC3(dev->of_node,
				    "allwinner,sun8i-a33-display-backend"))
		FUNC5(dev);

	FUNC0(backend->ram_clk);
	FUNC0(backend->mod_clk);
	FUNC0(backend->bus_clk);
	FUNC4(backend->reset);
}