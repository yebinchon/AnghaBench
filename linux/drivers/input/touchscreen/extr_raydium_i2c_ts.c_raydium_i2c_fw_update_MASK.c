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
struct TYPE_2__ {int /*<<< orphan*/  hw_ver; } ;
struct raydium_data {void* boot_mode; TYPE_1__ info; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* RAYDIUM_TS_BLDR ; 
 void* RAYDIUM_TS_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct raydium_data*,struct firmware const*) ; 
 int FUNC9 (struct raydium_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 int FUNC11 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct raydium_data *ts)
{
	struct i2c_client *client = ts->client;
	const struct firmware *fw = NULL;
	char *fw_file;
	int error;

	fw_file = FUNC4(GFP_KERNEL, "raydium_%#04x.fw",
			    FUNC6(ts->info.hw_ver));
	if (!fw_file)
		return -ENOMEM;

	FUNC0(&client->dev, "firmware name: %s\n", fw_file);

	error = FUNC11(&fw, fw_file, &client->dev);
	if (error) {
		FUNC1(&client->dev, "Unable to open firmware %s\n", fw_file);
		goto out_free_fw_file;
	}

	FUNC2(client->irq);

	error = FUNC8(ts, fw);
	if (error) {
		FUNC1(&client->dev, "firmware update failed: %d\n", error);
		ts->boot_mode = RAYDIUM_TS_BLDR;
		goto out_enable_irq;
	}

	error = FUNC9(ts);
	if (error) {
		FUNC1(&client->dev,
			"failed to initialize device after firmware update: %d\n",
			error);
		ts->boot_mode = RAYDIUM_TS_BLDR;
		goto out_enable_irq;
	}

	ts->boot_mode = RAYDIUM_TS_MAIN;

out_enable_irq:
	FUNC3(client->irq);
	FUNC7(100);

	FUNC10(fw);

out_free_fw_file:
	FUNC5(fw_file);

	return error;
}