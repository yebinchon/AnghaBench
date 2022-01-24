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
typedef  int u8 ;
struct tda9950_priv {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CSR_BUSY ; 
 int /*<<< orphan*/  REG_CCR ; 
 int /*<<< orphan*/  REG_CSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda9950_priv*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tda9950_priv *priv)
{
	struct i2c_client *client = priv->client;
	int timeout = 50;
	u8 csr;

	/* Stop the command processor */
	FUNC4(client, REG_CCR, 0);

	/* Wait up to .5s for it to signal non-busy */
	do {
		csr = FUNC3(client, REG_CSR);
		if (!(csr & CSR_BUSY) || !--timeout)
			break;
		FUNC1(10);
	} while (1);

	/* Warn the user that their IRQ may die if it's shared. */
	if (csr & CSR_BUSY)
		FUNC0(&client->dev, "command processor failed to stop, irq%d may die (csr=0x%02x)\n",
			 client->irq, csr);

	FUNC2(priv);
}