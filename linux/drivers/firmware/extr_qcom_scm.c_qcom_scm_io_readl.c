
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_io_readl (int ,int ,unsigned int*) ;
 TYPE_1__* __scm ;

int qcom_scm_io_readl(phys_addr_t addr, unsigned int *val)
{
 return __qcom_scm_io_readl(__scm->dev, addr, val);
}
