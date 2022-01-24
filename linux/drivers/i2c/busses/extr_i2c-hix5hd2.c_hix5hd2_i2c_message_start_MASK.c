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
struct hix5hd2_i2c_priv {int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 scalar_t__ HIX5I2C_COM ; 
 scalar_t__ HIX5I2C_TXR ; 
 int I2C_START ; 
 int I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hix5hd2_i2c_priv*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct hix5hd2_i2c_priv *priv, int stop)
{
	unsigned long flags;

	FUNC3(&priv->lock, flags);
	FUNC0(priv);
	FUNC1(priv);

	FUNC5(FUNC2(priv->msg),
		       priv->regs + HIX5I2C_TXR);

	FUNC5(I2C_WRITE | I2C_START, priv->regs + HIX5I2C_COM);
	FUNC4(&priv->lock, flags);
}