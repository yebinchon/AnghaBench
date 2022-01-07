
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct fwnode_handle {int dummy; } ;
struct exiu_irq_data {scalar_t__ base; int spi_base; } ;


 scalar_t__ EIMASK ;
 scalar_t__ EIREQCLR ;
 int ENODEV ;
 int ENOMEM ;
 struct exiu_irq_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ fwnode_property_read_u32_array (struct fwnode_handle const*,char*,int *,int) ;
 scalar_t__ ioremap (int ,int ) ;
 int kfree (struct exiu_irq_data*) ;
 struct exiu_irq_data* kzalloc (int,int ) ;
 int resource_size (struct resource*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static struct exiu_irq_data *exiu_init(const struct fwnode_handle *fwnode,
           struct resource *res)
{
 struct exiu_irq_data *data;
 int err;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ERR_PTR(-ENOMEM);

 if (fwnode_property_read_u32_array(fwnode, "socionext,spi-base",
        &data->spi_base, 1)) {
  err = -ENODEV;
  goto out_free;
 }

 data->base = ioremap(res->start, resource_size(res));
 if (!data->base) {
  err = -ENODEV;
  goto out_free;
 }


 writel_relaxed(0xFFFFFFFF, data->base + EIREQCLR);
 writel_relaxed(0xFFFFFFFF, data->base + EIMASK);

 return data;

out_free:
 kfree(data);
 return ERR_PTR(err);
}
