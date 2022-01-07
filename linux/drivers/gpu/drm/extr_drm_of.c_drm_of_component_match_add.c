
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int component_match_add_release (struct device*,struct component_match**,int ,int (*) (struct device*,void*),struct device_node*) ;
 int drm_release_of ;
 int of_node_get (struct device_node*) ;

void drm_of_component_match_add(struct device *master,
    struct component_match **matchptr,
    int (*compare)(struct device *, void *),
    struct device_node *node)
{
 of_node_get(node);
 component_match_add_release(master, matchptr, drm_release_of,
        compare, node);
}
