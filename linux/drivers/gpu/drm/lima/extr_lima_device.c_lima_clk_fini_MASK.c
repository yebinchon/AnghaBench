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
struct lima_device {int /*<<< orphan*/  clk_bus; int /*<<< orphan*/  clk_gpu; int /*<<< orphan*/ * reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lima_device *dev)
{
	if (dev->reset != NULL)
		FUNC1(dev->reset);
	FUNC0(dev->clk_gpu);
	FUNC0(dev->clk_bus);
}