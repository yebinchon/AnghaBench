
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct sbridge_pvt {TYPE_1__* sbridge_dev; TYPE_2__ info; int pci_br0; int pci_sad1; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct TYPE_3__ {int source_id; } ;


 scalar_t__ BROADWELL ;
 scalar_t__ HASWELL ;
 scalar_t__ KNIGHTS_LANDING ;
 int SAD_TARGET ;
 int SOURCE_ID (int ) ;
 int SOURCE_ID_KNL (int ) ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static void get_source_id(struct mem_ctl_info *mci)
{
 struct sbridge_pvt *pvt = mci->pvt_info;
 u32 reg;

 if (pvt->info.type == HASWELL || pvt->info.type == BROADWELL ||
     pvt->info.type == KNIGHTS_LANDING)
  pci_read_config_dword(pvt->pci_sad1, SAD_TARGET, &reg);
 else
  pci_read_config_dword(pvt->pci_br0, SAD_TARGET, &reg);

 if (pvt->info.type == KNIGHTS_LANDING)
  pvt->sbridge_dev->source_id = SOURCE_ID_KNL(reg);
 else
  pvt->sbridge_dev->source_id = SOURCE_ID(reg);
}
