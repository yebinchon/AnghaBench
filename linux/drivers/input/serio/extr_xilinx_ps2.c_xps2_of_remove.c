
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xps2data {int dev; int base_address; int serio; } ;
struct resource {int start; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_err (int ,char*) ;
 int iounmap (int ) ;
 int kfree (struct xps2data*) ;
 scalar_t__ of_address_to_resource (int ,int ,struct resource*) ;
 struct xps2data* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int xps2_of_remove(struct platform_device *of_dev)
{
 struct xps2data *drvdata = platform_get_drvdata(of_dev);
 struct resource r_mem;

 serio_unregister_port(drvdata->serio);
 iounmap(drvdata->base_address);


 if (of_address_to_resource(of_dev->dev.of_node, 0, &r_mem))
  dev_err(drvdata->dev, "invalid address\n");
 else
  release_mem_region(r_mem.start, resource_size(&r_mem));

 kfree(drvdata);

 return 0;
}
