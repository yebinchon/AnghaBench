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
struct intc_irqpin_priv {int sense_bitfield_width; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTC_IRQPIN_REG_SENSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct intc_irqpin_priv *p, int irq, int value)
{
	/* The SENSE register is assumed to be 32-bit. */
	int bitfield_width = p->sense_bitfield_width;
	int shift = 32 - (irq + 1) * bitfield_width;

	FUNC0(&p->pdev->dev, "sense irq = %d, mode = %d\n", irq, value);

	if (value >= (1 << bitfield_width))
		return -EINVAL;

	FUNC1(p, INTC_IRQPIN_REG_SENSE, shift,
				      bitfield_width, value);
	return 0;
}