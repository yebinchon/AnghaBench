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
struct fpga_bridge {TYPE_1__* br_ops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* enable_set ) (struct fpga_bridge*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct fpga_bridge*,int) ; 

int FUNC2(struct fpga_bridge *bridge)
{
	FUNC0(&bridge->dev, "enable\n");

	if (bridge->br_ops && bridge->br_ops->enable_set)
		return bridge->br_ops->enable_set(bridge, 1);

	return 0;
}