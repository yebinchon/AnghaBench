
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;



__attribute__((used)) static int compare_of(struct device *dev, void *data)
{
 struct device_node *np = data;

 return dev->of_node == np;
}
