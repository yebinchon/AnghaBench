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
struct rcar_i2c_priv {int /*<<< orphan*/  rstc; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int LOOP_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rcar_i2c_priv *priv)
{
	int i, ret;

	ret = FUNC0(priv->rstc);
	if (ret)
		return ret;

	for (i = 0; i < LOOP_TIMEOUT; i++) {
		ret = FUNC1(priv->rstc);
		if (ret == 0)
			return 0;
		FUNC2(1);
	}

	return -ETIMEDOUT;
}