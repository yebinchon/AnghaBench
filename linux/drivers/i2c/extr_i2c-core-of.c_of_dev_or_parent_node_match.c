
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {void const* of_node; TYPE_1__* parent; } ;
struct TYPE_2__ {void const* of_node; } ;



__attribute__((used)) static int of_dev_or_parent_node_match(struct device *dev, const void *data)
{
 if (dev->of_node == data)
  return 1;

 if (dev->parent)
  return dev->parent->of_node == data;

 return 0;
}
