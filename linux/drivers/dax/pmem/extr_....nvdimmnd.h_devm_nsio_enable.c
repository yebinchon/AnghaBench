
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_io {int dummy; } ;
struct device {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static inline int devm_nsio_enable(struct device *dev,
  struct nd_namespace_io *nsio)
{
 return -ENXIO;
}
