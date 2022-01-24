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
struct safexcel_ring_irq_data {int ring; struct safexcel_crypto_priv* priv; } ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_STAT ; 
 int FUNC4 (int) ; 
 int EIP197_xDR_ERR ; 
 int EIP197_xDR_THRESH ; 
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct safexcel_ring_irq_data *irq_data = data;
	struct safexcel_crypto_priv *priv = irq_data->priv;
	int ring = irq_data->ring, rc = IRQ_NONE;
	u32 status, stat;

	status = FUNC7(FUNC0(priv) + FUNC2(ring));
	if (!status)
		return rc;

	/* RDR interrupts */
	if (status & FUNC4(ring)) {
		stat = FUNC7(FUNC3(priv, ring) + EIP197_HIA_xDR_STAT);

		if (FUNC8(stat & EIP197_xDR_ERR)) {
			/*
			 * Fatal error, the RDR is unusable and must be
			 * reinitialized. This should not happen under
			 * normal circumstances.
			 */
			FUNC5(priv->dev, "RDR: fatal error.\n");
		} else if (FUNC6(stat & EIP197_xDR_THRESH)) {
			rc = IRQ_WAKE_THREAD;
		}

		/* ACK the interrupts */
		FUNC9(stat & 0xff,
		       FUNC3(priv, ring) + EIP197_HIA_xDR_STAT);
	}

	/* ACK the interrupts */
	FUNC9(status, FUNC0(priv) + FUNC1(ring));

	return rc;
}