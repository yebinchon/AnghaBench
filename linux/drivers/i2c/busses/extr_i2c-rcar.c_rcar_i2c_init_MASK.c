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
struct rcar_i2c_priv {scalar_t__ devtype; int /*<<< orphan*/  icccr; } ;

/* Variables and functions */
 scalar_t__ I2C_RCAR_GEN3 ; 
 int /*<<< orphan*/  ICCCR ; 
 int /*<<< orphan*/  ICFBSCR ; 
 int /*<<< orphan*/  ICMCR ; 
 int /*<<< orphan*/  ICMIER ; 
 int /*<<< orphan*/  ICMSR ; 
 int /*<<< orphan*/  MDBS ; 
 int /*<<< orphan*/  TCYC17 ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rcar_i2c_priv *priv)
{
	/* reset master mode */
	FUNC0(priv, ICMIER, 0);
	FUNC0(priv, ICMCR, MDBS);
	FUNC0(priv, ICMSR, 0);
	/* start clock */
	FUNC0(priv, ICCCR, priv->icccr);

	if (priv->devtype == I2C_RCAR_GEN3)
		FUNC0(priv, ICFBSCR, TCYC17);

}