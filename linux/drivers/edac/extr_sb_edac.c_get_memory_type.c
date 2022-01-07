
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rankcfgr; } ;
struct sbridge_pvt {TYPE_1__ info; scalar_t__ pci_ddrio; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;


 scalar_t__ GET_BITFIELD (int ,int,int) ;
 int MEM_DDR3 ;
 int MEM_RDDR3 ;
 int MEM_UNKNOWN ;
 int pci_read_config_dword (scalar_t__,int ,int *) ;

__attribute__((used)) static enum mem_type get_memory_type(struct sbridge_pvt *pvt)
{
 u32 reg;
 enum mem_type mtype;

 if (pvt->pci_ddrio) {
  pci_read_config_dword(pvt->pci_ddrio, pvt->info.rankcfgr,
          &reg);
  if (GET_BITFIELD(reg, 11, 11))

   mtype = MEM_RDDR3;
  else
   mtype = MEM_DDR3;
 } else
  mtype = MEM_UNKNOWN;

 return mtype;
}
