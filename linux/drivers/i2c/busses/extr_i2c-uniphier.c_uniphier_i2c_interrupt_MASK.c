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
struct uniphier_i2c_priv {int /*<<< orphan*/  comp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *dev_id)
{
	struct uniphier_i2c_priv *priv = dev_id;

	/*
	 * This hardware uses edge triggered interrupt.  Do not touch the
	 * hardware registers in this handler to make sure to catch the next
	 * interrupt edge.  Just send a complete signal and return.
	 */
	FUNC0(&priv->comp);

	return IRQ_HANDLED;
}