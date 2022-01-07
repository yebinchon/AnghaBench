
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdi_device {int vdds_sdi_reg; struct platform_device* pdev; struct dss_device* dss; int datapairs; } ;
struct platform_device {int dev; } ;
struct dss_device {int dummy; } ;
struct device_node {struct sdi_device* data; } ;


 int DSSERR (char*) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_regulator_get (int *,char*) ;
 int kfree (struct sdi_device*) ;
 struct sdi_device* kzalloc (int,int ) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int sdi_init_output (struct sdi_device*) ;

int sdi_init_port(struct dss_device *dss, struct platform_device *pdev,
    struct device_node *port)
{
 struct sdi_device *sdi;
 struct device_node *ep;
 u32 datapairs;
 int r;

 sdi = kzalloc(sizeof(*sdi), GFP_KERNEL);
 if (!sdi)
  return -ENOMEM;

 ep = of_get_next_child(port, ((void*)0));
 if (!ep) {
  r = 0;
  goto err_free;
 }

 r = of_property_read_u32(ep, "datapairs", &datapairs);
 of_node_put(ep);
 if (r) {
  DSSERR("failed to parse datapairs\n");
  goto err_free;
 }

 sdi->datapairs = datapairs;
 sdi->dss = dss;

 sdi->pdev = pdev;
 port->data = sdi;

 sdi->vdds_sdi_reg = devm_regulator_get(&pdev->dev, "vdds_sdi");
 if (IS_ERR(sdi->vdds_sdi_reg)) {
  r = PTR_ERR(sdi->vdds_sdi_reg);
  if (r != -EPROBE_DEFER)
   DSSERR("can't get VDDS_SDI regulator\n");
  goto err_free;
 }

 r = sdi_init_output(sdi);
 if (r)
  goto err_free;

 return 0;

err_free:
 kfree(sdi);

 return r;
}
