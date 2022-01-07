
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mtk_ddp_comp_funcs {int dummy; } ;
struct mtk_ddp_comp {int id; int * larb_dev; int * clk; scalar_t__ irq; int * regs; int funcs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef enum mtk_ddp_comp_type { ____Placeholder_mtk_ddp_comp_type } mtk_ddp_comp_type ;
typedef enum mtk_ddp_comp_id { ____Placeholder_mtk_ddp_comp_id } mtk_ddp_comp_id ;
struct TYPE_2__ {int type; int funcs; } ;


 int DDP_COMPONENT_BLS ;
 int DDP_COMPONENT_DPI0 ;
 int DDP_COMPONENT_DPI1 ;
 int DDP_COMPONENT_DSI0 ;
 int DDP_COMPONENT_DSI1 ;
 int DDP_COMPONENT_DSI2 ;
 int DDP_COMPONENT_DSI3 ;
 int DDP_COMPONENT_ID_MAX ;
 int DDP_COMPONENT_PWM0 ;
 int EINVAL ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int MTK_DISP_OVL ;
 int MTK_DISP_RDMA ;
 int MTK_DISP_WDMA ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,struct device_node*) ;
 int dev_warn (struct device*,char*,struct device_node*) ;
 TYPE_1__* mtk_ddp_matches ;
 int * of_clk_get (struct device_node*,int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int * of_iomap (struct device_node*,int ) ;
 scalar_t__ of_irq_get (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
        struct mtk_ddp_comp *comp, enum mtk_ddp_comp_id comp_id,
        const struct mtk_ddp_comp_funcs *funcs)
{
 enum mtk_ddp_comp_type type;
 struct device_node *larb_node;
 struct platform_device *larb_pdev;

 if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
  return -EINVAL;

 type = mtk_ddp_matches[comp_id].type;

 comp->id = comp_id;
 comp->funcs = funcs ?: mtk_ddp_matches[comp_id].funcs;

 if (comp_id == DDP_COMPONENT_BLS ||
     comp_id == DDP_COMPONENT_DPI0 ||
     comp_id == DDP_COMPONENT_DPI1 ||
     comp_id == DDP_COMPONENT_DSI0 ||
     comp_id == DDP_COMPONENT_DSI1 ||
     comp_id == DDP_COMPONENT_DSI2 ||
     comp_id == DDP_COMPONENT_DSI3 ||
     comp_id == DDP_COMPONENT_PWM0) {
  comp->regs = ((void*)0);
  comp->clk = ((void*)0);
  comp->irq = 0;
  return 0;
 }

 comp->regs = of_iomap(node, 0);
 comp->irq = of_irq_get(node, 0);
 comp->clk = of_clk_get(node, 0);
 if (IS_ERR(comp->clk))
  return PTR_ERR(comp->clk);


 comp->larb_dev = ((void*)0);
 if (type != MTK_DISP_OVL &&
     type != MTK_DISP_RDMA &&
     type != MTK_DISP_WDMA)
  return 0;

 larb_node = of_parse_phandle(node, "mediatek,larb", 0);
 if (!larb_node) {
  dev_err(dev,
   "Missing mediadek,larb phandle in %pOF node\n", node);
  return -EINVAL;
 }

 larb_pdev = of_find_device_by_node(larb_node);
 if (!larb_pdev) {
  dev_warn(dev, "Waiting for larb device %pOF\n", larb_node);
  of_node_put(larb_node);
  return -EPROBE_DEFER;
 }
 of_node_put(larb_node);

 comp->larb_dev = &larb_pdev->dev;

 return 0;
}
