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
typedef  scalar_t__ u32 ;
struct vic_device {int /*<<< orphan*/  domain; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIC_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct vic_device* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	u32 stat, hwirq;
	struct irq_chip *host_chip = FUNC4(desc);
	struct vic_device *vic = FUNC5(desc);

	FUNC0(host_chip, desc);

	while ((stat = FUNC7(vic->base + VIC_IRQ_STATUS))) {
		hwirq = FUNC2(stat) - 1;
		FUNC3(FUNC6(vic->domain, hwirq));
	}

	FUNC1(host_chip, desc);
}