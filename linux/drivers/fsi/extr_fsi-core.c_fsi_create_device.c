
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsi_slave {int dev; } ;
struct TYPE_2__ {int release; int * bus; int * parent; } ;
struct fsi_device {TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int fsi_bus_type ;
 int fsi_device_release ;
 struct fsi_device* kzalloc (int,int ) ;

__attribute__((used)) static struct fsi_device *fsi_create_device(struct fsi_slave *slave)
{
 struct fsi_device *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->dev.parent = &slave->dev;
 dev->dev.bus = &fsi_bus_type;
 dev->dev.release = fsi_device_release;

 return dev;
}
