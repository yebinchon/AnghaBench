
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct fsi_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int kfree (struct fsi_device*) ;
 int of_node_put (int ) ;
 struct fsi_device* to_fsi_dev (struct device*) ;

__attribute__((used)) static void fsi_device_release(struct device *_device)
{
 struct fsi_device *device = to_fsi_dev(_device);

 of_node_put(device->dev.of_node);
 kfree(device);
}
