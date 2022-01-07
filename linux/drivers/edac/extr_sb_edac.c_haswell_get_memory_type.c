
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sbridge_pvt {int pci_ta; int pci_ddrio; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;


 scalar_t__ GET_BITFIELD (int ,int,int) ;
 int HASWELL_DDRCRCLKCONTROLS ;
 int MCMTR ;
 int MEM_DDR3 ;
 int MEM_DDR4 ;
 int MEM_RDDR3 ;
 int MEM_RDDR4 ;
 int MEM_UNKNOWN ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static enum mem_type haswell_get_memory_type(struct sbridge_pvt *pvt)
{
 u32 reg;
 bool registered = 0;
 enum mem_type mtype = MEM_UNKNOWN;

 if (!pvt->pci_ddrio)
  goto out;

 pci_read_config_dword(pvt->pci_ddrio,
         HASWELL_DDRCRCLKCONTROLS, &reg);

 if (GET_BITFIELD(reg, 16, 16))
  registered = 1;

 pci_read_config_dword(pvt->pci_ta, MCMTR, &reg);
 if (GET_BITFIELD(reg, 14, 14)) {
  if (registered)
   mtype = MEM_RDDR4;
  else
   mtype = MEM_DDR4;
 } else {
  if (registered)
   mtype = MEM_RDDR3;
  else
   mtype = MEM_DDR3;
 }

out:
 return mtype;
}
