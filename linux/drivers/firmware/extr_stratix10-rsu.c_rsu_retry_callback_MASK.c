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
struct stratix10_svc_client {int /*<<< orphan*/  dev; struct stratix10_rsu_priv* priv; } ;
struct stratix10_svc_cb_data {scalar_t__ status; scalar_t__ kaddr1; } ;
struct stratix10_rsu_priv {unsigned int retry_counter; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVC_STATUS_RSU_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct stratix10_svc_client *client,
			       struct stratix10_svc_cb_data *data)
{
	struct stratix10_rsu_priv *priv = client->priv;
	unsigned int *counter = (unsigned int *)data->kaddr1;

	if (data->status == FUNC0(SVC_STATUS_RSU_OK))
		priv->retry_counter = *counter;
	else
		FUNC2(client->dev, "Failed to get retry counter %i\n",
			data->status);

	FUNC1(&priv->completion);
}