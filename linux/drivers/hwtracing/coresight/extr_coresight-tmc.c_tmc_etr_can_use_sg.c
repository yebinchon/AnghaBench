
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int fwnode; } ;


 int fwnode_property_present (int ,char*) ;

__attribute__((used)) static inline bool tmc_etr_can_use_sg(struct device *dev)
{
 return fwnode_property_present(dev->fwnode, "arm,scatter-gather");
}
