
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device_node {int dummy; } ;
struct alpine_msix_data {int addr; struct alpine_msix_data* msi_map; int spi_first; int num_spis; int msi_map_lock; } ;


 int ALPINE_MSIX_SPI_TARGET_CLUSTER0 ;
 int BITS_TO_LONGS (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GENMASK_ULL (int,int) ;
 int GFP_KERNEL ;
 int alpine_msix_init_domains (struct alpine_msix_data*,struct device_node*) ;
 struct alpine_msix_data* kcalloc (int ,int,int ) ;
 int kfree (struct alpine_msix_data*) ;
 struct alpine_msix_data* kzalloc (int,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int alpine_msix_init(struct device_node *node,
       struct device_node *parent)
{
 struct alpine_msix_data *priv;
 struct resource res;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->msi_map_lock);

 ret = of_address_to_resource(node, 0, &res);
 if (ret) {
  pr_err("Failed to allocate resource\n");
  goto err_priv;
 }
 priv->addr = res.start & GENMASK_ULL(63,20);
 priv->addr |= ALPINE_MSIX_SPI_TARGET_CLUSTER0;

 if (of_property_read_u32(node, "al,msi-base-spi", &priv->spi_first)) {
  pr_err("Unable to parse MSI base\n");
  ret = -EINVAL;
  goto err_priv;
 }

 if (of_property_read_u32(node, "al,msi-num-spis", &priv->num_spis)) {
  pr_err("Unable to parse MSI numbers\n");
  ret = -EINVAL;
  goto err_priv;
 }

 priv->msi_map = kcalloc(BITS_TO_LONGS(priv->num_spis),
    sizeof(*priv->msi_map),
    GFP_KERNEL);
 if (!priv->msi_map) {
  ret = -ENOMEM;
  goto err_priv;
 }

 pr_debug("Registering %d msixs, starting at %d\n",
   priv->num_spis, priv->spi_first);

 ret = alpine_msix_init_domains(priv, node);
 if (ret)
  goto err_map;

 return 0;

err_map:
 kfree(priv->msi_map);
err_priv:
 kfree(priv);
 return ret;
}
