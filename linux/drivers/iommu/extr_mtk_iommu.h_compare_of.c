
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void* of_node; } ;



__attribute__((used)) static inline int compare_of(struct device *dev, void *data)
{
 return dev->of_node == data;
}
