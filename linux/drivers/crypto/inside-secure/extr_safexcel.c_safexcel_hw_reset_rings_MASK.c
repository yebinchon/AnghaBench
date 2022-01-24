#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rings; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ FUNC1 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_HI ; 
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_LO ; 
 scalar_t__ EIP197_HIA_xDR_STAT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct safexcel_crypto_priv *priv)
{
	int i;

	for (i = 0; i < priv->config.rings; i++) {
		/* clear any pending interrupt */
		FUNC3(FUNC2(5, 0), FUNC0(priv, i) + EIP197_HIA_xDR_STAT);
		FUNC3(FUNC2(7, 0), FUNC1(priv, i) + EIP197_HIA_xDR_STAT);

		/* Reset the CDR base address */
		FUNC3(0, FUNC0(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
		FUNC3(0, FUNC0(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);

		/* Reset the RDR base address */
		FUNC3(0, FUNC1(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
		FUNC3(0, FUNC1(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);
	}
}