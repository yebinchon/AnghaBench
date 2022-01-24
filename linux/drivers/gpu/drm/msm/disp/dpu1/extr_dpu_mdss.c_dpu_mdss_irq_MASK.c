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
typedef  int u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct dpu_mdss {TYPE_1__ irq_controller; scalar_t__ mmio; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ HW_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct dpu_mdss* FUNC6 (struct irq_desc*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	struct dpu_mdss *dpu_mdss = FUNC6(desc);
	struct irq_chip *chip = FUNC5(desc);
	u32 interrupts;

	FUNC1(chip, desc);

	interrupts = FUNC8(dpu_mdss->mmio + HW_INTR_STATUS);

	while (interrupts) {
		irq_hw_number_t hwirq = FUNC3(interrupts) - 1;
		unsigned int mapping;
		int rc;

		mapping = FUNC7(dpu_mdss->irq_controller.domain,
					   hwirq);
		if (mapping == 0) {
			FUNC0("couldn't find irq mapping for %lu\n", hwirq);
			break;
		}

		rc = FUNC4(mapping);
		if (rc < 0) {
			FUNC0("handle irq fail: irq=%lu mapping=%u rc=%d\n",
				  hwirq, mapping, rc);
			break;
		}

		interrupts &= ~(1 << hwirq);
	}

	FUNC2(chip, desc);
}