#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stts751_priv {int max_alert; int min_alert; int notify_max; int notify_min; int /*<<< orphan*/  access_lock; TYPE_1__* dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int I2C_PROTOCOL_SMBUS_ALERT ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct stts751_priv* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct stts751_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC9(struct i2c_client *client,
			  enum i2c_alert_protocol type, unsigned int data)
{
	int ret;
	struct stts751_priv *priv = FUNC3(client);

	if (type != I2C_PROTOCOL_SMBUS_ALERT)
		return;

	FUNC0(&client->dev, "alert!");

	FUNC5(&priv->access_lock);
	ret = FUNC7(priv);
	if (ret < 0) {
		/* default to worst case */
		priv->max_alert = true;
		priv->min_alert = true;

		FUNC2(priv->dev,
			 "Alert received, but can't communicate to the device. Triggering all alarms!");
	}

	if (priv->max_alert) {
		if (priv->notify_max)
			FUNC1(priv->dev, "got alert for HIGH temperature");
		priv->notify_max = false;

		/* unblock alert poll */
		FUNC8(&priv->dev->kobj, NULL, "temp1_max_alarm");
	}

	if (priv->min_alert) {
		if (priv->notify_min)
			FUNC1(priv->dev, "got alert for LOW temperature");
		priv->notify_min = false;

		/* unblock alert poll */
		FUNC8(&priv->dev->kobj, NULL, "temp1_min_alarm");
	}

	if (priv->min_alert || priv->max_alert)
		FUNC4(&priv->dev->kobj, KOBJ_CHANGE);

	FUNC6(&priv->access_lock);
}