
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;


 int ENODEV ;

int __qcom_scm_assign_mem(struct device *dev, phys_addr_t mem_region,
     size_t mem_sz, phys_addr_t src, size_t src_sz,
     phys_addr_t dest, size_t dest_sz)
{
 return -ENODEV;
}
