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
struct as3645a {int /*<<< orphan*/  indicator_node; int /*<<< orphan*/  flash_node; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fled; struct i2c_client* client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct as3645a*) ; 
 int FUNC1 (struct as3645a*) ; 
 int FUNC2 (struct as3645a*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct as3645a*) ; 
 int FUNC4 (struct as3645a*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct as3645a* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct as3645a*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client)
{
	struct as3645a *flash;
	int rval;

	if (!FUNC5(&client->dev))
		return -ENODEV;

	flash = FUNC6(&client->dev, sizeof(*flash), GFP_KERNEL);
	if (flash == NULL)
		return -ENOMEM;

	flash->client = client;

	rval = FUNC2(flash, FUNC5(&client->dev));
	if (rval < 0)
		return rval;

	rval = FUNC0(flash);
	if (rval < 0)
		goto out_put_nodes;

	FUNC11(&flash->mutex);
	FUNC8(client, flash);

	rval = FUNC3(flash);
	if (rval)
		goto out_mutex_destroy;

	rval = FUNC1(flash);
	if (rval)
		goto out_mutex_destroy;

	rval = FUNC4(flash);
	if (rval)
		goto out_led_classdev_flash_unregister;

	return 0;

out_led_classdev_flash_unregister:
	FUNC9(&flash->fled);

out_mutex_destroy:
	FUNC10(&flash->mutex);

out_put_nodes:
	FUNC7(flash->flash_node);
	FUNC7(flash->indicator_node);

	return rval;
}