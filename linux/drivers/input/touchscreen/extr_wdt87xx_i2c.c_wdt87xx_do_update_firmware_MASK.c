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
struct wdt87xx_data {int /*<<< orphan*/  fw_mutex; int /*<<< orphan*/  param; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct wdt87xx_data* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2c_client*,struct firmware const*,unsigned int) ; 
 int FUNC8 (struct i2c_client*) ; 
 int FUNC9 (struct wdt87xx_data*,struct firmware const*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
				      const struct firmware *fw,
				      unsigned int chunk_id)
{
	struct wdt87xx_data *wdt = FUNC3(client);
	int error;

	error = FUNC9(wdt, fw);
	if (error)
		return error;

	error = FUNC4(&wdt->fw_mutex);
	if (error)
		return error;

	FUNC1(client->irq);

	error = FUNC7(client, fw, chunk_id);
	if (error) {
		FUNC0(&client->dev,
			"firmware load failed (type: %d): %d\n",
			chunk_id, error);
		goto out;
	}

	error = FUNC8(client);
	if (error) {
		FUNC0(&client->dev, "soft reset failed: %d\n", error);
		goto out;
	}

	/* Refresh the parameters */
	error = FUNC6(client, &wdt->param);
	if (error)
		FUNC0(&client->dev,
			"failed to refresh system parameters: %d\n", error);
out:
	FUNC2(client->irq);
	FUNC5(&wdt->fw_mutex);

	return error ? error : 0;
}