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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct fpga_bridge {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  fpga_bridge_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fpga_bridge*) ; 

void FUNC2(struct fpga_bridge *bridge)
{
	FUNC0(&fpga_bridge_ida, bridge->dev.id);
	FUNC1(bridge);
}