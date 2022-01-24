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
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct firmware {int size; } ;
struct elants_data {scalar_t__ iap_mode; int /*<<< orphan*/  state; int /*<<< orphan*/  hw_version; struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELAN_FW_PAGESIZE ; 
 scalar_t__ ELAN_IAP_OPERATIONAL ; 
 scalar_t__ ELAN_IAP_RECOVERY ; 
 int /*<<< orphan*/  ELAN_STATE_NORMAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct elants_data*) ; 
 int FUNC4 (struct i2c_client*,struct firmware const*,int) ; 
 int FUNC5 (struct elants_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 int FUNC11 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct elants_data *ts)
{
	struct i2c_client *client = ts->client;
	const struct firmware *fw;
	char *fw_name;
	int error;

	fw_name = FUNC7(GFP_KERNEL, "elants_i2c_%04x.bin", ts->hw_version);
	if (!fw_name)
		return -ENOMEM;

	FUNC1(&client->dev, "requesting fw name = %s\n", fw_name);
	error = FUNC11(&fw, fw_name, &client->dev);
	FUNC8(fw_name);
	if (error) {
		FUNC0(&client->dev, "failed to request firmware: %d\n",
			error);
		return error;
	}

	if (fw->size % ELAN_FW_PAGESIZE) {
		FUNC0(&client->dev, "invalid firmware length: %zu\n",
			fw->size);
		error = -EINVAL;
		goto out;
	}

	FUNC2(client->irq);

	error = FUNC4(client, fw,
					ts->iap_mode == ELAN_IAP_RECOVERY);
	if (error) {
		FUNC0(&client->dev, "firmware update failed: %d\n", error);
		ts->iap_mode = ELAN_IAP_RECOVERY;
		goto out_enable_irq;
	}

	error = FUNC5(ts);
	if (error) {
		FUNC0(&client->dev,
			"failed to initialize device after firmware update: %d\n",
			error);
		ts->iap_mode = ELAN_IAP_RECOVERY;
		goto out_enable_irq;
	}

	ts->iap_mode = ELAN_IAP_OPERATIONAL;

out_enable_irq:
	ts->state = ELAN_STATE_NORMAL;
	FUNC6(client->irq);
	FUNC9(100);

	if (!error)
		FUNC3(ts);
out:
	FUNC10(fw);
	return error;
}