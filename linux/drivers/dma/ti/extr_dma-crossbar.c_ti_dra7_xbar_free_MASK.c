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
struct ti_dra7_xbar_map {int /*<<< orphan*/  xbar_out; int /*<<< orphan*/  xbar_in; } ;
struct ti_dra7_xbar_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dma_inuse; int /*<<< orphan*/  safe_val; int /*<<< orphan*/  iomem; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_dra7_xbar_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_dra7_xbar_map*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev, void *route_data)
{
	struct ti_dra7_xbar_data *xbar = FUNC2(dev);
	struct ti_dra7_xbar_map *map = route_data;

	FUNC1(dev, "Unmapping XBAR%u (was routed to %d)\n",
		map->xbar_in, map->xbar_out);

	FUNC6(xbar->iomem, map->xbar_out, xbar->safe_val);
	FUNC4(&xbar->mutex);
	FUNC0(map->xbar_out, xbar->dma_inuse);
	FUNC5(&xbar->mutex);
	FUNC3(map);
}