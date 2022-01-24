#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wf_ad7417_priv {int cpu; struct mpu_data const* mpu; struct i2c_client* i2c; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct mpu_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct wf_ad7417_priv*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wf_ad7417_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  wf_ad7417_adc_ops ; 
 int /*<<< orphan*/  FUNC9 (struct wf_ad7417_priv*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wf_ad7417_priv*) ; 
 int /*<<< orphan*/  wf_ad7417_temp_ops ; 
 struct mpu_data* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct wf_ad7417_priv *pv;
	const struct mpu_data *mpu;
	const char *loc;
	int cpu_nr;

	loc = FUNC6(client->dev.of_node, "hwsensor-location", NULL);
	if (!loc) {
		FUNC2(&client->dev, "Missing hwsensor-location property!\n");
		return -ENXIO;
	}

	/*
	 * Identify which CPU we belong to by looking at the first entry
	 * in the hwsensor-location list
	 */
	if (!FUNC8(loc, "CPU A", 5))
		cpu_nr = 0;
	else if (!FUNC8(loc, "CPU B", 5))
		cpu_nr = 1;
	else {
		FUNC7("wf_ad7417: Can't identify location %s\n", loc);
		return -ENXIO;
	}
	mpu = FUNC11(cpu_nr);
	if (!mpu) {
		FUNC0(&client->dev, "Failed to retrieve MPU data\n");
		return -ENXIO;
	}

	pv = FUNC4(sizeof(struct wf_ad7417_priv), GFP_KERNEL);
	if (pv == NULL)
		return -ENODEV;

	FUNC3(&pv->ref);
	FUNC5(&pv->lock);
	pv->i2c = client;
	pv->cpu = cpu_nr;
	pv->mpu = mpu;
	FUNC1(&client->dev, pv);

	/* Initialize the chip */
	FUNC10(pv);

	/*
	 * We cannot rely on Apple device-tree giving us child
	 * node with the names of the individual sensors so we
	 * just hard code what we know about them
	 */
	FUNC9(pv, 0, "cpu-amb-temp", &wf_ad7417_temp_ops);
	FUNC9(pv, 1, "cpu-diode-temp", &wf_ad7417_adc_ops);
	FUNC9(pv, 2, "cpu-12v-current", &wf_ad7417_adc_ops);
	FUNC9(pv, 3, "cpu-voltage", &wf_ad7417_adc_ops);
	FUNC9(pv, 4, "cpu-current", &wf_ad7417_adc_ops);

	return 0;
}