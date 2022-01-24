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
 scalar_t__ UNIPHIER_FI2C_BM ; 
 int UNIPHIER_FI2C_BM_SDAS ; 
 struct uniphier_fi2c_priv* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap)
{
	struct uniphier_fi2c_priv *priv = FUNC0(adap);

	return !!(FUNC1(priv->membase + UNIPHIER_FI2C_BM) &
							UNIPHIER_FI2C_BM_SDAS);
}