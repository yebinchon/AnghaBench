
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int dev; } ;
struct device {int dummy; } ;


 int dev_of_node (int ) ;
 int dev_to_fsi_master (struct device*) ;
 int kfree (struct fsi_master_gpio*) ;
 int of_node_put (int ) ;
 struct fsi_master_gpio* to_fsi_master_gpio (int ) ;

__attribute__((used)) static void fsi_master_gpio_release(struct device *dev)
{
 struct fsi_master_gpio *master = to_fsi_master_gpio(dev_to_fsi_master(dev));

 of_node_put(dev_of_node(master->dev));

 kfree(master);
}
