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
struct uniphier_fi2c_priv {scalar_t__ membase; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ UNIPHIER_FI2C_BRST ; 
 int /*<<< orphan*/  UNIPHIER_FI2C_BRST_RSCL ; 
 struct uniphier_fi2c_priv* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *adap, int val)
{
	struct uniphier_fi2c_priv *priv = FUNC0(adap);

	FUNC1(val ? UNIPHIER_FI2C_BRST_RSCL : 0,
	       priv->membase + UNIPHIER_FI2C_BRST);
}