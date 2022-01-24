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
struct ucb1400_ts {int /*<<< orphan*/  irq; int /*<<< orphan*/  ac97; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  NO_IRQ ; 
 int /*<<< orphan*/  UCB_ADC_CR ; 
 int /*<<< orphan*/  UCB_ADC_DATA ; 
 int UCB_ADC_DAT_VALID ; 
 int UCB_ADC_ENA ; 
 int UCB_ADC_START ; 
 int UCB_IE_ADC ; 
 int /*<<< orphan*/  UCB_IE_CLEAR ; 
 int /*<<< orphan*/  UCB_IE_FAL ; 
 int /*<<< orphan*/  UCB_IE_RIS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 () ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct ucb1400_ts *ucb,
					   struct platform_device *pdev)
{
	unsigned long mask, timeout;

	mask = FUNC3();

	/* Enable the ADC interrupt. */
	FUNC6(ucb->ac97, UCB_IE_RIS, UCB_IE_ADC);
	FUNC6(ucb->ac97, UCB_IE_FAL, UCB_IE_ADC);
	FUNC6(ucb->ac97, UCB_IE_CLEAR, 0xffff);
	FUNC6(ucb->ac97, UCB_IE_CLEAR, 0);

	/* Cause an ADC interrupt. */
	FUNC6(ucb->ac97, UCB_ADC_CR, UCB_ADC_ENA);
	FUNC6(ucb->ac97, UCB_ADC_CR, UCB_ADC_ENA | UCB_ADC_START);

	/* Wait for the conversion to complete. */
	timeout = jiffies + HZ/2;
	while (!(FUNC5(ucb->ac97, UCB_ADC_DATA) &
						UCB_ADC_DAT_VALID)) {
		FUNC0();
		if (FUNC4(jiffies, timeout)) {
			FUNC1(&pdev->dev, "timed out in IRQ probe\n");
			FUNC2(mask);
			return -ENODEV;
		}
	}
	FUNC6(ucb->ac97, UCB_ADC_CR, 0);

	/* Disable and clear interrupt. */
	FUNC6(ucb->ac97, UCB_IE_RIS, 0);
	FUNC6(ucb->ac97, UCB_IE_FAL, 0);
	FUNC6(ucb->ac97, UCB_IE_CLEAR, 0xffff);
	FUNC6(ucb->ac97, UCB_IE_CLEAR, 0);

	/* Read triggered interrupt. */
	ucb->irq = FUNC2(mask);
	if (ucb->irq < 0 || ucb->irq == NO_IRQ)
		return -ENODEV;

	return 0;
}