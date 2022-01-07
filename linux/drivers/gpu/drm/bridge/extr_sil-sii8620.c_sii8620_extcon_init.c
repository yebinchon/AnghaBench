
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct sii8620 {TYPE_2__* dev; TYPE_1__ extcon_nb; int extcon_wq; struct extcon_dev* extcon; } ;
struct extcon_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int of_node; } ;


 int EPROBE_DEFER ;
 int EXTCON_DISP_MHL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct extcon_dev*) ;
 int PTR_ERR (struct extcon_dev*) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 struct extcon_dev* extcon_find_edev_by_node (struct device_node*) ;
 int extcon_register_notifier (struct extcon_dev*,int ,TYPE_1__*) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (int ,int,int) ;
 int of_node_put (struct device_node*) ;
 int sii8620_extcon_notifier ;
 int sii8620_extcon_work ;

__attribute__((used)) static int sii8620_extcon_init(struct sii8620 *ctx)
{
 struct extcon_dev *edev;
 struct device_node *musb, *muic;
 int ret;


 musb = of_graph_get_remote_node(ctx->dev->of_node, 1, -1);

 muic = of_get_next_parent(musb);

 if (!muic) {
  dev_info(ctx->dev, "no extcon found, switching to 'always on' mode\n");
  return 0;
 }

 edev = extcon_find_edev_by_node(muic);
 of_node_put(muic);
 if (IS_ERR(edev)) {
  if (PTR_ERR(edev) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_err(ctx->dev, "Invalid or missing extcon\n");
  return PTR_ERR(edev);
 }

 ctx->extcon = edev;
 ctx->extcon_nb.notifier_call = sii8620_extcon_notifier;
 INIT_WORK(&ctx->extcon_wq, sii8620_extcon_work);
 ret = extcon_register_notifier(edev, EXTCON_DISP_MHL, &ctx->extcon_nb);
 if (ret) {
  dev_err(ctx->dev, "failed to register notifier for MHL\n");
  return ret;
 }

 return 0;
}
