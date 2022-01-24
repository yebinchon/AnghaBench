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
struct stratix10_svc_client {int /*<<< orphan*/  dev; struct stratix10_rsu_priv* priv; } ;
struct stratix10_svc_cb_data {scalar_t__ status; scalar_t__ kaddr1; } ;
struct TYPE_2__ {void* error_details; void* error_location; scalar_t__ current_image; scalar_t__ fail_image; void* state; void* version; } ;
struct stratix10_rsu_priv {int /*<<< orphan*/  completion; TYPE_1__ status; } ;
struct arm_smccc_res {scalar_t__ a0; int /*<<< orphan*/  a3; scalar_t__ a1; int /*<<< orphan*/  a2; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSU_ERROR_DETAIL_MASK ; 
 int /*<<< orphan*/  RSU_ERROR_LOCATION_MASK ; 
 int /*<<< orphan*/  RSU_STATE_MASK ; 
 int /*<<< orphan*/  RSU_VERSION_MASK ; 
 int /*<<< orphan*/  SVC_STATUS_RSU_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct stratix10_svc_client *client,
				struct stratix10_svc_cb_data *data)
{
	struct stratix10_rsu_priv *priv = client->priv;
	struct arm_smccc_res *res = (struct arm_smccc_res *)data->kaddr1;

	if (data->status == FUNC0(SVC_STATUS_RSU_OK)) {
		priv->status.version = FUNC1(RSU_VERSION_MASK,
						 res->a2);
		priv->status.state = FUNC1(RSU_STATE_MASK, res->a2);
		priv->status.fail_image = res->a1;
		priv->status.current_image = res->a0;
		priv->status.error_location =
			FUNC1(RSU_ERROR_LOCATION_MASK, res->a3);
		priv->status.error_details =
			FUNC1(RSU_ERROR_DETAIL_MASK, res->a3);
	} else {
		FUNC3(client->dev, "COMMAND_RSU_STATUS returned 0x%lX\n",
			res->a0);
		priv->status.version = 0;
		priv->status.state = 0;
		priv->status.fail_image = 0;
		priv->status.current_image = 0;
		priv->status.error_location = 0;
		priv->status.error_details = 0;
	}

	FUNC2(&priv->completion);
}