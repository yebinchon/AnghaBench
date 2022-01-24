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
struct ti_am335x_xbar_map {int /*<<< orphan*/  dma_line; int /*<<< orphan*/  mux_val; } ;
struct ti_am335x_xbar_data {int /*<<< orphan*/  iomem; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_am335x_xbar_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_am335x_xbar_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *route_data)
{
	struct ti_am335x_xbar_data *xbar = FUNC1(dev);
	struct ti_am335x_xbar_map *map = route_data;

	FUNC0(dev, "Unmapping XBAR event %u on channel %u\n",
		map->mux_val, map->dma_line);

	FUNC3(xbar->iomem, map->dma_line, 0);
	FUNC2(map);
}