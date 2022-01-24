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
struct TYPE_2__ {scalar_t__ dist_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM_GIC_V3_ITS ; 
 scalar_t__ GICD_TYPER ; 
 int GICD_TYPER_LPIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gic_data ; 
 int /*<<< orphan*/  gicv3_nolpi ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(void)
{
	return (FUNC0(CONFIG_ARM_GIC_V3_ITS) &&
		!!(FUNC1(gic_data.dist_base + GICD_TYPER) & GICD_TYPER_LPIS) &&
		!gicv3_nolpi);
}