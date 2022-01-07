
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_umad_port {int umad_dev; } ;
struct TYPE_2__ {int parent; } ;
struct ib_device {TYPE_1__ dev; } ;
struct device {int release; int parent; int * class; } ;


 int dev_set_drvdata (struct device*,struct ib_umad_port*) ;
 int device_initialize (struct device*) ;
 int ib_umad_dev_get (int ) ;
 int ib_umad_release_port ;
 int umad_class ;

__attribute__((used)) static void ib_umad_init_port_dev(struct device *dev,
      struct ib_umad_port *port,
      const struct ib_device *device)
{
 device_initialize(dev);
 ib_umad_dev_get(port->umad_dev);
 dev->class = &umad_class;
 dev->parent = device->dev.parent;
 dev_set_drvdata(dev, port);
 dev->release = ib_umad_release_port;
}
