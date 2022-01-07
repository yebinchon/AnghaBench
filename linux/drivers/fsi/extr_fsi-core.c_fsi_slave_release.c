
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;
struct fsi_slave {TYPE_1__ dev; } ;
struct device {int of_node; } ;


 int fsi_free_minor (int ) ;
 int kfree (struct fsi_slave*) ;
 int of_node_put (int ) ;
 struct fsi_slave* to_fsi_slave (struct device*) ;

__attribute__((used)) static void fsi_slave_release(struct device *dev)
{
 struct fsi_slave *slave = to_fsi_slave(dev);

 fsi_free_minor(slave->dev.devt);
 of_node_put(dev->of_node);
 kfree(slave);
}
