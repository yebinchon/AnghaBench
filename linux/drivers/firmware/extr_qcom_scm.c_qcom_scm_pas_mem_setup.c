
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_pas_mem_setup (int ,int ,int ,int ) ;
 TYPE_1__* __scm ;
 int qcom_scm_clk_disable () ;
 int qcom_scm_clk_enable () ;

int qcom_scm_pas_mem_setup(u32 peripheral, phys_addr_t addr, phys_addr_t size)
{
 int ret;

 ret = qcom_scm_clk_enable();
 if (ret)
  return ret;

 ret = __qcom_scm_pas_mem_setup(__scm->dev, peripheral, addr, size);
 qcom_scm_clk_disable();

 return ret;
}
