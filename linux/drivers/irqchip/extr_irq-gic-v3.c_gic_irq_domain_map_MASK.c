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
struct irq_domain {int /*<<< orphan*/  host_data; } ;
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int EPERM ; 
#define  EPPI_RANGE 132 
#define  ESPI_RANGE 131 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
#define  LPI_RANGE 130 
#define  PPI_RANGE 129 
#define  SPI_RANGE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_chip gic_chip ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct irq_chip gic_eoimode1_chip ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  handle_percpu_devid_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,struct irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  supports_deactivate_key ; 

__attribute__((used)) static int FUNC10(struct irq_domain *d, unsigned int irq,
			      irq_hw_number_t hw)
{
	struct irq_chip *chip = &gic_chip;

	if (FUNC9(&supports_deactivate_key))
		chip = &gic_eoimode1_chip;

	switch (FUNC0(hw)) {
	case PPI_RANGE:
	case EPPI_RANGE:
		FUNC4(irq);
		FUNC3(d, irq, hw, chip, d->host_data,
				    handle_percpu_devid_irq, NULL, NULL);
		FUNC6(irq, IRQ_NOAUTOEN);
		break;

	case SPI_RANGE:
	case ESPI_RANGE:
		FUNC3(d, irq, hw, chip, d->host_data,
				    handle_fasteoi_irq, NULL, NULL);
		FUNC5(irq);
		FUNC8(FUNC2(FUNC7(irq)));
		break;

	case LPI_RANGE:
		if (!FUNC1())
			return -EPERM;
		FUNC3(d, irq, hw, chip, d->host_data,
				    handle_fasteoi_irq, NULL, NULL);
		break;

	default:
		return -EPERM;
	}

	return 0;
}