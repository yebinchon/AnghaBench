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
struct irq_data {int dummy; } ;
struct cht_wc_i2c_adap {int /*<<< orphan*/  irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ_CLIENT_IRQ ; 
 struct cht_wc_i2c_adap* FUNC0 (struct irq_data*) ; 

__attribute__((used)) static void FUNC1(struct irq_data *data)
{
	struct cht_wc_i2c_adap *adap = FUNC0(data);

	adap->irq_mask |= CHT_WC_EXTCHGRIRQ_CLIENT_IRQ;
}