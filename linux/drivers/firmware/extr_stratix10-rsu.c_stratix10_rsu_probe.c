
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; scalar_t__ state; scalar_t__ error_details; scalar_t__ error_location; scalar_t__ fail_image; scalar_t__ current_image; } ;
struct TYPE_4__ {struct stratix10_rsu_priv* priv; int * receive_cb; struct device* dev; } ;
struct stratix10_rsu_priv {int chan; TYPE_1__ status; int completion; TYPE_2__ client; int lock; int retry_counter; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int COMMAND_RSU_RETRY ;
 int COMMAND_RSU_STATUS ;
 int ENOMEM ;
 scalar_t__ FIELD_GET (int ,scalar_t__) ;
 int GFP_KERNEL ;
 int INVALID_RETRY_COUNTER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RSU_FW_VERSION_MASK ;
 int SVC_CLIENT_RSU ;
 int dev_err (struct device*,char*,int) ;
 struct stratix10_rsu_priv* devm_kzalloc (struct device*,int,int ) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct stratix10_rsu_priv*) ;
 int rsu_retry_callback ;
 int rsu_send_msg (struct stratix10_rsu_priv*,int ,int ,int ) ;
 int rsu_status_callback ;
 int stratix10_svc_free_channel (int ) ;
 int stratix10_svc_request_channel_byname (TYPE_2__*,int) ;

__attribute__((used)) static int stratix10_rsu_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct stratix10_rsu_priv *priv;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client.dev = dev;
 priv->client.receive_cb = ((void*)0);
 priv->client.priv = priv;
 priv->status.current_image = 0;
 priv->status.fail_image = 0;
 priv->status.error_location = 0;
 priv->status.error_details = 0;
 priv->status.version = 0;
 priv->status.state = 0;
 priv->retry_counter = INVALID_RETRY_COUNTER;

 mutex_init(&priv->lock);
 priv->chan = stratix10_svc_request_channel_byname(&priv->client,
         SVC_CLIENT_RSU);
 if (IS_ERR(priv->chan)) {
  dev_err(dev, "couldn't get service channel %s\n",
   SVC_CLIENT_RSU);
  return PTR_ERR(priv->chan);
 }

 init_completion(&priv->completion);
 platform_set_drvdata(pdev, priv);


 ret = rsu_send_msg(priv, COMMAND_RSU_STATUS,
      0, rsu_status_callback);
 if (ret) {
  dev_err(dev, "Error, getting RSU status %i\n", ret);
  stratix10_svc_free_channel(priv->chan);
 }


 if (FIELD_GET(RSU_FW_VERSION_MASK, priv->status.version)) {
  ret = rsu_send_msg(priv, COMMAND_RSU_RETRY, 0,
       rsu_retry_callback);
  if (ret) {
   dev_err(dev,
    "Error, getting RSU retry %i\n", ret);
   stratix10_svc_free_channel(priv->chan);
  }
 }

 return ret;
}
