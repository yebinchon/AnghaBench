
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stratix10_svc_client {int dev; struct stratix10_rsu_priv* priv; } ;
struct stratix10_svc_cb_data {scalar_t__ status; scalar_t__ kaddr1; } ;
struct TYPE_2__ {void* error_details; void* error_location; scalar_t__ current_image; scalar_t__ fail_image; void* state; void* version; } ;
struct stratix10_rsu_priv {int completion; TYPE_1__ status; } ;
struct arm_smccc_res {scalar_t__ a0; int a3; scalar_t__ a1; int a2; } ;


 scalar_t__ BIT (int ) ;
 void* FIELD_GET (int ,int ) ;
 int RSU_ERROR_DETAIL_MASK ;
 int RSU_ERROR_LOCATION_MASK ;
 int RSU_STATE_MASK ;
 int RSU_VERSION_MASK ;
 int SVC_STATUS_RSU_OK ;
 int complete (int *) ;
 int dev_err (int ,char*,scalar_t__) ;

__attribute__((used)) static void rsu_status_callback(struct stratix10_svc_client *client,
    struct stratix10_svc_cb_data *data)
{
 struct stratix10_rsu_priv *priv = client->priv;
 struct arm_smccc_res *res = (struct arm_smccc_res *)data->kaddr1;

 if (data->status == BIT(SVC_STATUS_RSU_OK)) {
  priv->status.version = FIELD_GET(RSU_VERSION_MASK,
       res->a2);
  priv->status.state = FIELD_GET(RSU_STATE_MASK, res->a2);
  priv->status.fail_image = res->a1;
  priv->status.current_image = res->a0;
  priv->status.error_location =
   FIELD_GET(RSU_ERROR_LOCATION_MASK, res->a3);
  priv->status.error_details =
   FIELD_GET(RSU_ERROR_DETAIL_MASK, res->a3);
 } else {
  dev_err(client->dev, "COMMAND_RSU_STATUS returned 0x%lX\n",
   res->a0);
  priv->status.version = 0;
  priv->status.state = 0;
  priv->status.fail_image = 0;
  priv->status.current_image = 0;
  priv->status.error_location = 0;
  priv->status.error_details = 0;
 }

 complete(&priv->completion);
}
