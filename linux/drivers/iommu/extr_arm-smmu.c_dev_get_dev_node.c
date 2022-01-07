
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_bus {TYPE_2__* bridge; struct pci_bus* parent; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_6__ {struct pci_bus* bus; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int of_node; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 struct device_node* of_node_get (int ) ;
 int pci_is_root_bus (struct pci_bus*) ;
 TYPE_3__* to_pci_dev (struct device*) ;

__attribute__((used)) static struct device_node *dev_get_dev_node(struct device *dev)
{
 if (dev_is_pci(dev)) {
  struct pci_bus *bus = to_pci_dev(dev)->bus;

  while (!pci_is_root_bus(bus))
   bus = bus->parent;
  return of_node_get(bus->bridge->parent->of_node);
 }

 return of_node_get(dev->of_node);
}
