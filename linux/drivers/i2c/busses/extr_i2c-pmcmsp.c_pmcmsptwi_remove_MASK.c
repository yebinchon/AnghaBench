#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ iobase; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ MSP_TWI_INT_MSK_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmcmsptwi_adapter ; 
 TYPE_1__ pmcmsptwi_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pldev)
{
	struct resource *res;

	FUNC1(&pmcmsptwi_adapter);

	if (pmcmsptwi_data.irq) {
		FUNC4(0,
			pmcmsptwi_data.iobase + MSP_TWI_INT_MSK_REG_OFFSET);
		FUNC0(pmcmsptwi_data.irq, &pmcmsptwi_data);
	}

	FUNC2(pmcmsptwi_data.iobase);

	res = FUNC3(pldev, IORESOURCE_MEM, 0);
	FUNC5(res->start, FUNC6(res));

	return 0;
}