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
struct rcar_i2c_priv {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FSCL ; 
 int /*<<< orphan*/  ICMCR ; 
 struct rcar_i2c_priv* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct rcar_i2c_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap)
{
	struct rcar_i2c_priv *priv = FUNC0(adap);

	return !!(FUNC1(priv, ICMCR) & FSCL);

}