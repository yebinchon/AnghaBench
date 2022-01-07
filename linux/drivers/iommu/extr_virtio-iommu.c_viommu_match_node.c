
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct TYPE_2__ {void const* fwnode; } ;



__attribute__((used)) static int viommu_match_node(struct device *dev, const void *data)
{
 return dev->parent->fwnode == data;
}
