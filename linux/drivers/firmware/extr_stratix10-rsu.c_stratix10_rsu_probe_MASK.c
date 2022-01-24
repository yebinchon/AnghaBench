#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ version; scalar_t__ state; scalar_t__ error_details; scalar_t__ error_location; scalar_t__ fail_image; scalar_t__ current_image; } ;
struct TYPE_4__ {struct stratix10_rsu_priv* priv; int /*<<< orphan*/ * receive_cb; struct device* dev; } ;
struct stratix10_rsu_priv {int /*<<< orphan*/  chan; TYPE_1__ status; int /*<<< orphan*/  completion; TYPE_2__ client; int /*<<< orphan*/  lock; int /*<<< orphan*/  retry_counter; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_RSU_RETRY ; 
 int /*<<< orphan*/  COMMAND_RSU_STATUS ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INVALID_RETRY_COUNTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSU_FW_VERSION_MASK ; 
 int SVC_CLIENT_RSU ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct stratix10_rsu_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct stratix10_rsu_priv*) ; 
 int /*<<< orphan*/  rsu_retry_callback ; 
 int FUNC8 (struct stratix10_rsu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsu_status_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct stratix10_rsu_priv *priv;
	int ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client.dev = dev;
	priv->client.receive_cb = NULL;
	priv->client.priv = priv;
	priv->status.current_image = 0;
	priv->status.fail_image = 0;
	priv->status.error_location = 0;
	priv->status.error_details = 0;
	priv->status.version = 0;
	priv->status.state = 0;
	priv->retry_counter = INVALID_RETRY_COUNTER;

	FUNC6(&priv->lock);
	priv->chan = FUNC10(&priv->client,
							  SVC_CLIENT_RSU);
	if (FUNC1(priv->chan)) {
		FUNC3(dev, "couldn't get service channel %s\n",
			SVC_CLIENT_RSU);
		return FUNC2(priv->chan);
	}

	FUNC5(&priv->completion);
	FUNC7(pdev, priv);

	/* get the initial state from firmware */
	ret = FUNC8(priv, COMMAND_RSU_STATUS,
			   0, rsu_status_callback);
	if (ret) {
		FUNC3(dev, "Error, getting RSU status %i\n", ret);
		FUNC9(priv->chan);
	}

	/* only 19.3 or late version FW supports retry counter feature */
	if (FUNC0(RSU_FW_VERSION_MASK, priv->status.version)) {
		ret = FUNC8(priv, COMMAND_RSU_RETRY, 0,
				   rsu_retry_callback);
		if (ret) {
			FUNC3(dev,
				"Error, getting RSU retry %i\n", ret);
			FUNC9(priv->chan);
		}
	}

	return ret;
}