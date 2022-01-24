#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;
struct adnp {struct i2c_client* client; int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct adnp*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adnp*) ; 
 struct adnp* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct adnp*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
				    const struct i2c_device_id *id)
{
	struct device_node *np = client->dev.of_node;
	struct adnp *adnp;
	u32 num_gpios;
	int err;

	err = FUNC7(np, "nr-gpios", &num_gpios);
	if (err < 0)
		return err;

	client->irq = FUNC4(np, 0);
	if (!client->irq)
		return -EPROBE_DEFER;

	adnp = FUNC2(&client->dev, sizeof(*adnp), GFP_KERNEL);
	if (!adnp)
		return -ENOMEM;

	FUNC5(&adnp->i2c_lock);
	adnp->client = client;

	err = FUNC0(adnp, num_gpios);
	if (err)
		return err;

	if (FUNC6(np, "interrupt-controller", NULL)) {
		err = FUNC1(adnp);
		if (err)
			return err;
	}

	FUNC3(client, adnp);

	return 0;
}