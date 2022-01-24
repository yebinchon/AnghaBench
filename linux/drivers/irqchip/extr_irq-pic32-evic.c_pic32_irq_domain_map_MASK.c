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
struct irq_domain {struct evic_chip_data* host_data; } ;
struct irq_data {int dummy; } ;
struct evic_chip_data {int* irq_types; } ;
typedef  size_t irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int,int) ; 
 int IRQ_TYPE_SENSE_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ REG_IEC_OFFSET ; 
 scalar_t__ REG_IFS_OFFSET ; 
 int evic_base ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int FUNC4 (struct irq_domain*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct irq_domain *d, unsigned int virq,
				irq_hw_number_t hw)
{
	struct evic_chip_data *priv = d->host_data;
	struct irq_data *data;
	int ret;
	u32 iecclr, ifsclr;
	u32 reg, mask;

	ret = FUNC4(d, virq, hw);
	if (ret)
		return ret;

	/*
	 * Piggyback on xlate function to move to an alternate chip as necessary
	 * at time of mapping instead of allowing the flow handler/chip to be
	 * changed later. This requires all interrupts to be configured through
	 * DT.
	 */
	if (priv->irq_types[hw] & IRQ_TYPE_SENSE_MASK) {
		data = FUNC3(d, virq);
		FUNC6(data, priv->irq_types[hw]);
		FUNC5(data, priv->irq_types[hw]);
	}

	FUNC0(hw, reg, mask);

	iecclr = FUNC1(REG_IEC_OFFSET + reg * 0x10);
	ifsclr = FUNC1(REG_IFS_OFFSET + reg * 0x10);

	/* mask and clear flag */
	FUNC8(mask, evic_base + iecclr);
	FUNC8(mask, evic_base + ifsclr);

	/* default priority is required */
	FUNC7(hw, FUNC2(2, 0));

	return ret;
}