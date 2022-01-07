
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int np; } ;
struct mbox_client {int rx_callback; struct device* dev; } ;
struct mbox_chan {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMX_SC_R_MU_0A ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct mbox_chan*) ;
 int PTR_ERR (struct mbox_chan*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_kfree (struct device*,struct mbox_client*) ;
 struct mbox_client* devm_kzalloc (struct device*,int,int ) ;
 int imx_sc_irq_ipc_handle ;
 int imx_sc_irq_work ;
 int imx_scu_get_handle (int *) ;
 int imx_scu_irq_callback ;
 int imx_scu_irq_work_handler ;
 struct mbox_chan* mbox_request_channel_byname (struct mbox_client*,char*) ;
 scalar_t__ mu_resource_id ;
 int of_alias_get_id (int ,char*) ;
 int of_parse_phandle_with_args (int ,char*,char*,int ,struct of_phandle_args*) ;

int imx_scu_enable_general_irq_channel(struct device *dev)
{
 struct of_phandle_args spec;
 struct mbox_client *cl;
 struct mbox_chan *ch;
 int ret = 0, i = 0;

 ret = imx_scu_get_handle(&imx_sc_irq_ipc_handle);
 if (ret)
  return ret;

 cl = devm_kzalloc(dev, sizeof(*cl), GFP_KERNEL);
 if (!cl)
  return -ENOMEM;

 cl->dev = dev;
 cl->rx_callback = imx_scu_irq_callback;


 ch = mbox_request_channel_byname(cl, "gip3");
 if (IS_ERR(ch)) {
  ret = PTR_ERR(ch);
  dev_err(dev, "failed to request mbox chan gip3, ret %d\n", ret);
  devm_kfree(dev, cl);
  return ret;
 }

 INIT_WORK(&imx_sc_irq_work, imx_scu_irq_work_handler);

 if (!of_parse_phandle_with_args(dev->of_node, "mboxes",
           "#mbox-cells", 0, &spec))
  i = of_alias_get_id(spec.np, "mu");


 if (i < 0)
  i = 1;

 mu_resource_id = IMX_SC_R_MU_0A + i;

 return ret;
}
