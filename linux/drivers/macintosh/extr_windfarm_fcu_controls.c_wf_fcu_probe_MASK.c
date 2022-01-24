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
struct wf_fcu_priv {int /*<<< orphan*/  fan_list; struct i2c_client* i2c; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wf_fcu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct wf_fcu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wf_fcu_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wf_fcu_priv*) ; 
 scalar_t__ FUNC9 (struct wf_fcu_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct wf_fcu_priv*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct wf_fcu_priv *pv;

	pv = FUNC4(sizeof(*pv), GFP_KERNEL);
	if (!pv)
		return -ENOMEM;

	FUNC3(&pv->ref);
	FUNC6(&pv->lock);
	FUNC0(&pv->fan_list);
	pv->i2c = client;

	/*
	 * First we must start the FCU which will query the
	 * shift value to apply to RPMs
	 */
	if (FUNC9(pv)) {
		FUNC7("wf_fcu: Initialization failed !\n");
		FUNC2(pv);
		return -ENXIO;
	}

	/* First lookup fans in the device-tree */
	FUNC10(pv);

	/*
	 * Older machines don't have the device-tree entries
	 * we are looking for, just hard code the list
	 */
	if (FUNC5(&pv->fan_list))
		FUNC8(pv);

	/* Still no fans ? FAIL */
	if (FUNC5(&pv->fan_list)) {
		FUNC7("wf_fcu: Failed to find fans for your machine\n");
		FUNC2(pv);
		return -ENODEV;
	}

	FUNC1(&client->dev, pv);

	return 0;
}