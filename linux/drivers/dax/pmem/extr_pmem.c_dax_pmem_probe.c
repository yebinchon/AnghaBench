
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DEV_DAX_BUS ;
 int PTR_ERR_OR_ZERO (int ) ;
 int __dax_pmem_probe (struct device*,int ) ;

__attribute__((used)) static int dax_pmem_probe(struct device *dev)
{
 return PTR_ERR_OR_ZERO(__dax_pmem_probe(dev, DEV_DAX_BUS));
}
