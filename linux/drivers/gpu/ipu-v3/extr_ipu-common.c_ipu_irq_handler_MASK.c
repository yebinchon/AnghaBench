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
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct ipu_soc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*,int const*,int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct ipu_soc* FUNC5 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct ipu_soc *ipu = FUNC5(desc);
	struct irq_chip *chip = FUNC4(desc);
	static const int int_reg[] = { 0, 1, 2, 3, 10, 11, 12, 13, 14};

	FUNC1(chip, desc);

	FUNC3(ipu, int_reg, FUNC0(int_reg));

	FUNC2(chip, desc);
}