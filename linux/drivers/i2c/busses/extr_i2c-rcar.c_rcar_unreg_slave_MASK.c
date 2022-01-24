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
struct rcar_i2c_priv {int /*<<< orphan*/ * slave; int /*<<< orphan*/  irq; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSCR ; 
 int /*<<< orphan*/  ICSIER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rcar_i2c_priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *slave)
{
	struct rcar_i2c_priv *priv = FUNC1(slave->adapter);

	FUNC0(!priv->slave);

	/* disable irqs and ensure none is running before clearing ptr */
	FUNC4(priv, ICSIER, 0);
	FUNC4(priv, ICSCR, 0);

	FUNC5(priv->irq);
	priv->slave = NULL;

	FUNC2(FUNC3(priv));

	return 0;
}