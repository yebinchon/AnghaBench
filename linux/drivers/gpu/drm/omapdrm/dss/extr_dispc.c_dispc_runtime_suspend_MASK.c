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
struct dispc_device {int is_enabled; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct dispc_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct dispc_device *dispc = FUNC0(dev);

	dispc->is_enabled = false;
	/* ensure the dispc_irq_handler sees the is_enabled value */
	FUNC2();
	/* wait for current handler to finish before turning the DISPC off */
	FUNC3(dispc->irq);

	FUNC1(dispc);

	return 0;
}