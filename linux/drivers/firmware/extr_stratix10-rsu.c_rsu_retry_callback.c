
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stratix10_svc_client {int dev; struct stratix10_rsu_priv* priv; } ;
struct stratix10_svc_cb_data {scalar_t__ status; scalar_t__ kaddr1; } ;
struct stratix10_rsu_priv {unsigned int retry_counter; int completion; } ;


 scalar_t__ BIT (int ) ;
 int SVC_STATUS_RSU_OK ;
 int complete (int *) ;
 int dev_err (int ,char*,scalar_t__) ;

__attribute__((used)) static void rsu_retry_callback(struct stratix10_svc_client *client,
          struct stratix10_svc_cb_data *data)
{
 struct stratix10_rsu_priv *priv = client->priv;
 unsigned int *counter = (unsigned int *)data->kaddr1;

 if (data->status == BIT(SVC_STATUS_RSU_OK))
  priv->retry_counter = *counter;
 else
  dev_err(client->dev, "Failed to get retry counter %i\n",
   data->status);

 complete(&priv->completion);
}
