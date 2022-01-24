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
typedef  unsigned long u32 ;
struct irq_desc {int dummy; } ;
struct ipu_irq_map {unsigned int irq; } ;
struct ipu_irq_bank {int /*<<< orphan*/  control; int /*<<< orphan*/  status; } ;
struct ipu {int dummy; } ;

/* Variables and functions */
 int IPU_IRQ_NR_BANKS ; 
 int /*<<< orphan*/  bank_lock ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (struct ipu*,int /*<<< orphan*/ ) ; 
 struct ipu_irq_bank* irq_bank ; 
 struct ipu* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ipu_irq_map* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct ipu *ipu = FUNC3(desc);
	u32 status;
	int i, line;

	for (i = 0; i < IPU_IRQ_NR_BANKS; i++) {
		struct ipu_irq_bank *bank = irq_bank + i;

		FUNC5(&bank_lock);
		status = FUNC2(ipu, bank->status);
		/*
		 * Don't think we have to clear all interrupts here, they will
		 * be acked by ->handle_irq() (handle_level_irq). However, we
		 * might want to clear unhandled interrupts after the loop...
		 */
		status &= FUNC2(ipu, bank->control);
		FUNC6(&bank_lock);
		while ((line = FUNC0(status))) {
			struct ipu_irq_map *map;
			unsigned int irq;

			line--;
			status &= ~(1UL << line);

			FUNC5(&bank_lock);
			map = FUNC7(32 * i + line);
			if (!map) {
				FUNC6(&bank_lock);
				FUNC4("IPU: Interrupt on unmapped source %u bank %d\n",
				       line, i);
				continue;
			}
			irq = map->irq;
			FUNC6(&bank_lock);
			FUNC1(irq);
		}
	}
}