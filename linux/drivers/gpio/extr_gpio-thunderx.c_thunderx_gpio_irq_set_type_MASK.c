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
typedef  int u64 ;
struct thunderx_line {int fil_bits; int /*<<< orphan*/  line; } ;
struct thunderx_gpio {int /*<<< orphan*/  lock; scalar_t__ register_base; int /*<<< orphan*/  od_mask; int /*<<< orphan*/  invert_mask; struct thunderx_line* line_entries; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int GPIO_BIT_CFG_INT_EN ; 
 int GPIO_BIT_CFG_INT_TYPE ; 
 int GPIO_BIT_CFG_PIN_XOR ; 
 int IRQ_SET_MASK_OK ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thunderx_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_fasteoi_ack_irq ; 
 int /*<<< orphan*/  handle_fasteoi_mask_irq ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,unsigned int) ; 
 size_t FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct irq_data *d,
				      unsigned int flow_type)
{
	struct gpio_chip *gc = FUNC3(d);
	struct thunderx_gpio *txgpio = FUNC2(gc);
	struct thunderx_line *txline =
		&txgpio->line_entries[FUNC6(d)];
	u64 bit_cfg;

	FUNC5(d, flow_type);

	bit_cfg = txline->fil_bits | GPIO_BIT_CFG_INT_EN;

	if (flow_type & IRQ_TYPE_EDGE_BOTH) {
		FUNC4(d, handle_fasteoi_ack_irq);
		bit_cfg |= GPIO_BIT_CFG_INT_TYPE;
	} else {
		FUNC4(d, handle_fasteoi_mask_irq);
	}

	FUNC7(&txgpio->lock);
	if (flow_type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_LEVEL_LOW)) {
		bit_cfg |= GPIO_BIT_CFG_PIN_XOR;
		FUNC9(txline->line, txgpio->invert_mask);
	} else {
		FUNC1(txline->line, txgpio->invert_mask);
	}
	FUNC1(txline->line, txgpio->od_mask);
	FUNC10(bit_cfg, txgpio->register_base + FUNC0(txline->line));
	FUNC8(&txgpio->lock);

	return IRQ_SET_MASK_OK;
}