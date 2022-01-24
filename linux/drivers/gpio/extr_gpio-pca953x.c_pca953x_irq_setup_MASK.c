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
struct pca953x_chip {int driver_data; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;

/* Variables and functions */
 int PCA_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(struct pca953x_chip *chip,
			     int irq_base)
{
	struct i2c_client *client = chip->client;

	if (client->irq && irq_base != -1 && (chip->driver_data & PCA_INT))
		FUNC0(&client->dev, "interrupt support not compiled in\n");

	return 0;
}