
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int compare_of ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 int msm_gpu_match ;
 scalar_t__ of_device_is_available (struct device_node*) ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int add_gpu_components(struct device *dev,
         struct component_match **matchptr)
{
 struct device_node *np;

 np = of_find_matching_node(((void*)0), msm_gpu_match);
 if (!np)
  return 0;

 if (of_device_is_available(np))
  drm_of_component_match_add(dev, matchptr, compare_of, np);

 of_node_put(np);

 return 0;
}
