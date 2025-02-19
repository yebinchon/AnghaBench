
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct venc_device {TYPE_1__* pdev; int type; int invert_polarity; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int EINVAL ;
 int OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int OMAP_DSS_VENC_TYPE_SVIDEO ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct device_node* of_graph_get_endpoint_by_regs (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int venc_probe_of(struct venc_device *venc)
{
 struct device_node *node = venc->pdev->dev.of_node;
 struct device_node *ep;
 u32 channels;
 int r;

 ep = of_graph_get_endpoint_by_regs(node, 0, 0);
 if (!ep)
  return 0;

 venc->invert_polarity = of_property_read_bool(ep, "ti,invert-polarity");

 r = of_property_read_u32(ep, "ti,channels", &channels);
 if (r) {
  dev_err(&venc->pdev->dev,
   "failed to read property 'ti,channels': %d\n", r);
  goto err;
 }

 switch (channels) {
 case 1:
  venc->type = OMAP_DSS_VENC_TYPE_COMPOSITE;
  break;
 case 2:
  venc->type = OMAP_DSS_VENC_TYPE_SVIDEO;
  break;
 default:
  dev_err(&venc->pdev->dev, "bad channel propert '%d'\n",
   channels);
  r = -EINVAL;
  goto err;
 }

 of_node_put(ep);

 return 0;

err:
 of_node_put(ep);
 return r;
}
