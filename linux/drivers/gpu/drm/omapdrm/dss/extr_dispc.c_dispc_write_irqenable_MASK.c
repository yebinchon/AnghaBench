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
typedef  int u32 ;
struct dispc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_IRQENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dispc_device*,int) ; 
 int FUNC1 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dispc_device *dispc, u32 mask)
{
	u32 old_mask = FUNC1(dispc, DISPC_IRQENABLE);

	/* clear the irqstatus for newly enabled irqs */
	FUNC0(dispc, (mask ^ old_mask) & mask);

	FUNC2(dispc, DISPC_IRQENABLE, mask);

	/* flush posted write */
	FUNC1(dispc, DISPC_IRQENABLE);
}