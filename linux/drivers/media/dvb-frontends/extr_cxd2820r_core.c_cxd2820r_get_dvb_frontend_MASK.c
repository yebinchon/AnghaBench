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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {int dummy; } ;
struct cxd2820r_priv {struct dvb_frontend fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct cxd2820r_priv* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static struct dvb_frontend *FUNC2(struct i2c_client *client)
{
	struct cxd2820r_priv *priv = FUNC1(client);

	FUNC0(&client->dev, "\n");

	return &priv->fe;
}