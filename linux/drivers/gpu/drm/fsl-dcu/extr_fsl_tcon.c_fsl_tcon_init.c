
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_tcon {int ipg_clk; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 struct fsl_tcon* devm_kzalloc (struct device*,int,int ) ;
 int fsl_tcon_init_regmap (struct device*,struct fsl_tcon*,struct device_node*) ;
 int of_clk_get_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

struct fsl_tcon *fsl_tcon_init(struct device *dev)
{
 struct fsl_tcon *tcon;
 struct device_node *np;
 int ret;


 np = of_parse_phandle(dev->of_node, "fsl,tcon", 0);
 if (!np)
  return ((void*)0);

 tcon = devm_kzalloc(dev, sizeof(*tcon), GFP_KERNEL);
 if (!tcon)
  goto err_node_put;

 ret = fsl_tcon_init_regmap(dev, tcon, np);
 if (ret) {
  dev_err(dev, "Couldn't create the TCON regmap\n");
  goto err_node_put;
 }

 tcon->ipg_clk = of_clk_get_by_name(np, "ipg");
 if (IS_ERR(tcon->ipg_clk)) {
  dev_err(dev, "Couldn't get the TCON bus clock\n");
  goto err_node_put;
 }

 ret = clk_prepare_enable(tcon->ipg_clk);
 if (ret) {
  dev_err(dev, "Couldn't enable the TCON clock\n");
  goto err_node_put;
 }

 of_node_put(np);
 dev_info(dev, "Using TCON in bypass mode\n");

 return tcon;

err_node_put:
 of_node_put(np);
 return ((void*)0);
}
