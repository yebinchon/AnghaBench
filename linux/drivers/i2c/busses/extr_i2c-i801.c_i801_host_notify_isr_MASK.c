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
struct i801_priv {int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int /*<<< orphan*/  SMBSLVSTS_HST_NTFY_STS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned short) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct i801_priv *priv)
{
	unsigned short addr;

	addr = FUNC3(FUNC0(priv)) >> 1;

	/*
	 * With the tested platforms, reading SMBNTFDDAT (22 + (p)->smba)
	 * always returns 0. Our current implementation doesn't provide
	 * data, so we just ignore it.
	 */
	FUNC2(&priv->adapter, addr);

	/* clear Host Notify bit and return */
	FUNC4(SMBSLVSTS_HST_NTFY_STS, FUNC1(priv));
	return IRQ_HANDLED;
}