
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int,int ,int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static inline void MRST_MSG_WRITE32(int domain, uint port, uint offset,
        u32 value)
{
 int mcr = (0xE0<<24) | (port << 16) | (offset << 8) | 0xF0;
 struct pci_dev *pci_root = pci_get_domain_bus_and_slot(domain, 0, 0);
 pci_write_config_dword(pci_root, 0xD4, value);
 pci_write_config_dword(pci_root, 0xD0, mcr);
 pci_dev_put(pci_root);
}
