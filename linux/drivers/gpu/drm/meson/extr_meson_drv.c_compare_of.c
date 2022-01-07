
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void* of_node; } ;


 int DRM_DEBUG_DRIVER (char*,void*,void*) ;

__attribute__((used)) static int compare_of(struct device *dev, void *data)
{
 DRM_DEBUG_DRIVER("Comparing of node %pOF with %pOF\n",
    dev->of_node, data);

 return dev->of_node == data;
}
