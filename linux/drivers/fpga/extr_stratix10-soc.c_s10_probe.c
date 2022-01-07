
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct s10_priv* priv; int receive_cb; struct device* dev; } ;
struct s10_priv {int chan; int status_return_completion; TYPE_1__ client; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SVC_CLIENT_FPGA ;
 int dev_err (struct device*,char*,...) ;
 struct s10_priv* devm_kzalloc (struct device*,int,int ) ;
 struct fpga_manager* fpga_mgr_create (struct device*,char*,int *,struct s10_priv*) ;
 int fpga_mgr_free (struct fpga_manager*) ;
 int fpga_mgr_register (struct fpga_manager*) ;
 int init_completion (int *) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_manager*) ;
 int s10_ops ;
 int s10_receive_callback ;
 int stratix10_svc_free_channel (int ) ;
 int stratix10_svc_request_channel_byname (TYPE_1__*,int ) ;

__attribute__((used)) static int s10_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct s10_priv *priv;
 struct fpga_manager *mgr;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client.dev = dev;
 priv->client.receive_cb = s10_receive_callback;
 priv->client.priv = priv;

 priv->chan = stratix10_svc_request_channel_byname(&priv->client,
         SVC_CLIENT_FPGA);
 if (IS_ERR(priv->chan)) {
  dev_err(dev, "couldn't get service channel (%s)\n",
   SVC_CLIENT_FPGA);
  return PTR_ERR(priv->chan);
 }

 init_completion(&priv->status_return_completion);

 mgr = fpga_mgr_create(dev, "Stratix10 SOC FPGA Manager",
         &s10_ops, priv);
 if (!mgr) {
  dev_err(dev, "unable to create FPGA manager\n");
  ret = -ENOMEM;
  goto probe_err;
 }

 ret = fpga_mgr_register(mgr);
 if (ret) {
  dev_err(dev, "unable to register FPGA manager\n");
  fpga_mgr_free(mgr);
  goto probe_err;
 }

 platform_set_drvdata(pdev, mgr);
 return ret;

probe_err:
 stratix10_svc_free_channel(priv->chan);
 return ret;
}
