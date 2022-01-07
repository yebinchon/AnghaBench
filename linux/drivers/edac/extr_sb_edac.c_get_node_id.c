
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sbridge_pvt {int pci_br0; } ;


 int GET_BITFIELD (int ,int ,int) ;
 int SAD_CONTROL ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static u8 get_node_id(struct sbridge_pvt *pvt)
{
 u32 reg;
 pci_read_config_dword(pvt->pci_br0, SAD_CONTROL, &reg);
 return GET_BITFIELD(reg, 0, 2);
}
