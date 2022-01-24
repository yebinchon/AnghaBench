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
struct rcar_i2c_priv {int /*<<< orphan*/  sg; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_i2c_priv*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct rcar_i2c_priv *priv = data;

	priv->pos += FUNC1(&priv->sg);

	FUNC0(priv);
}