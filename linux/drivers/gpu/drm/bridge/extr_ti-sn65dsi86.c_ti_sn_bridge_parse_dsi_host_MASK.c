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
struct ti_sn_bridge {int /*<<< orphan*/  host_node; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ti_sn_bridge *pdata)
{
	struct device_node *np = pdata->dev->of_node;

	pdata->host_node = FUNC1(np, 0, 0);

	if (!pdata->host_node) {
		FUNC0("remote dsi host node not found\n");
		return -ENODEV;
	}

	return 0;
}