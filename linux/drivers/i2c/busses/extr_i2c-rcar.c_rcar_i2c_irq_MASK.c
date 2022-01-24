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
struct rcar_i2c_priv {int flags; int /*<<< orphan*/  wait; int /*<<< orphan*/  msgs_left; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICMCR ; 
 int /*<<< orphan*/  ICMIER ; 
 int /*<<< orphan*/  ICMSR ; 
 int ID_ARBLOST ; 
 int ID_DONE ; 
 int ID_NACK ; 
 int ID_P_REP_AFTER_RD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MAL ; 
 int MNR ; 
 int MST ; 
 int RCAR_BUS_MASK_DATA ; 
 int RCAR_IRQ_STOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_i2c_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_i2c_priv*,int) ; 
 scalar_t__ FUNC3 (struct rcar_i2c_priv*) ; 
 int FUNC4 (struct rcar_i2c_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *ptr)
{
	struct rcar_i2c_priv *priv = ptr;
	u32 msr, val;

	/* Clear START or STOP immediately, except for REPSTART after read */
	if (FUNC0(!(priv->flags & ID_P_REP_AFTER_RD))) {
		val = FUNC4(priv, ICMCR);
		FUNC6(priv, ICMCR, val & RCAR_BUS_MASK_DATA);
	}

	msr = FUNC4(priv, ICMSR);

	/* Only handle interrupts that are currently enabled */
	msr &= FUNC4(priv, ICMIER);
	if (!msr) {
		if (FUNC5(priv))
			return IRQ_HANDLED;

		return IRQ_NONE;
	}

	/* Arbitration lost */
	if (msr & MAL) {
		priv->flags |= ID_DONE | ID_ARBLOST;
		goto out;
	}

	/* Nack */
	if (msr & MNR) {
		/* HW automatically sends STOP after received NACK */
		FUNC6(priv, ICMIER, RCAR_IRQ_STOP);
		priv->flags |= ID_NACK;
		goto out;
	}

	/* Stop */
	if (msr & MST) {
		priv->msgs_left--; /* The last message also made it */
		priv->flags |= ID_DONE;
		goto out;
	}

	if (FUNC3(priv))
		FUNC1(priv, msr);
	else
		FUNC2(priv, msr);

out:
	if (priv->flags & ID_DONE) {
		FUNC6(priv, ICMIER, 0);
		FUNC6(priv, ICMSR, 0);
		FUNC7(&priv->wait);
	}

	return IRQ_HANDLED;
}