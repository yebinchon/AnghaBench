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
struct migor_ts_priv {int /*<<< orphan*/  input; int /*<<< orphan*/  irq; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct migor_ts_priv*) ; 
 struct migor_ts_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct migor_ts_priv*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct migor_ts_priv *priv = FUNC2(client);

	FUNC1(priv->irq, priv);
	FUNC3(priv->input);
	FUNC4(priv);

	FUNC0(&client->dev, NULL);

	return 0;
}