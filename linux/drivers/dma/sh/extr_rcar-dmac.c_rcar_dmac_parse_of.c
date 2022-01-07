
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac {int n_channels; int channels_mask; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;
 int RCAR_DMAC_MAX_CHANNELS ;
 int dev_err (struct device*,char*,...) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int rcar_dmac_parse_of(struct device *dev, struct rcar_dmac *dmac)
{
 struct device_node *np = dev->of_node;
 int ret;

 ret = of_property_read_u32(np, "dma-channels", &dmac->n_channels);
 if (ret < 0) {
  dev_err(dev, "unable to read dma-channels property\n");
  return ret;
 }


 if (dmac->n_channels <= 0 ||
     dmac->n_channels >= RCAR_DMAC_MAX_CHANNELS) {
  dev_err(dev, "invalid number of channels %u\n",
   dmac->n_channels);
  return -EINVAL;
 }

 dmac->channels_mask = GENMASK(dmac->n_channels - 1, 0);

 return 0;
}
