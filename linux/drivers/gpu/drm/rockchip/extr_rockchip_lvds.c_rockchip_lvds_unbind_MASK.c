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
struct rockchip_lvds {int /*<<< orphan*/  encoder; int /*<<< orphan*/  connector; scalar_t__ panel; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rockchip_lvds* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct device *dev, struct device *master,
				void *data)
{
	struct rockchip_lvds *lvds = FUNC0(dev);

	FUNC5(&lvds->encoder);
	if (lvds->panel)
		FUNC3(lvds->panel);
	FUNC4(dev);
	FUNC1(&lvds->connector);
	FUNC2(&lvds->encoder);
}