
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device {struct mcb_bus* bus; } ;
struct mcb_bus {int dummy; } ;


 int GFP_KERNEL ;
 struct mcb_device* kzalloc (int,int ) ;

struct mcb_device *mcb_alloc_dev(struct mcb_bus *bus)
{
 struct mcb_device *dev;

 dev = kzalloc(sizeof(struct mcb_device), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->bus = bus;

 return dev;
}
