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
struct rcar_i2c_priv {int recovery_icmcr; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int FSCL ; 
 int FSDA ; 
 int /*<<< orphan*/  ICMCR ; 
 int LOOP_TIMEOUT ; 
 int MDBS ; 
 int OBPC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rcar_i2c_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rcar_i2c_priv *priv)
{
	int i;

	for (i = 0; i < LOOP_TIMEOUT; i++) {
		/* make sure that bus is not busy */
		if (!(FUNC1(priv, ICMCR) & FSDA))
			return 0;
		FUNC2(1);
	}

	/* Waiting did not help, try to recover */
	priv->recovery_icmcr = MDBS | OBPC | FSDA | FSCL;
	return FUNC0(&priv->adap);
}