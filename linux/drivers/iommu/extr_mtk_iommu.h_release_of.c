
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int of_node_put (void*) ;

__attribute__((used)) static inline void release_of(struct device *dev, void *data)
{
 of_node_put(data);
}
