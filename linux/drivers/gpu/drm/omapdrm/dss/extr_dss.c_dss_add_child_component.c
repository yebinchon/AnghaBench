
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct component_match {int dummy; } ;


 int component_match_add (int ,struct component_match**,int ,struct device*) ;
 int dev_name (struct device*) ;
 int dss_component_compare ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int dss_add_child_component(struct device *dev, void *data)
{
 struct component_match **match = data;







 if (strstr(dev_name(dev), "rfbi"))
  return 0;

 component_match_add(dev->parent, match, dss_component_compare, dev);

 return 0;
}
