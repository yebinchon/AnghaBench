
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int pcie_performance_request; } ;
struct pp_hwmgr {scalar_t__ backend; } ;



__attribute__((used)) static int smu7_pcie_performance_request(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 data->pcie_performance_request = 1;

 return 0;
}
