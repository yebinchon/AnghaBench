
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct amd8111_pci_info {struct pci_dev* dev; } ;


 scalar_t__ EDAC_OPSTATE_POLL ;
 int HT_LINK_CRCFEN ;
 int PCI_INTBRG_CTRL_POLL_MASK ;
 int PCI_STSCMD_SERREN ;
 int REG_HT_LINK ;
 int REG_PCI_INTBRG_CTRL ;
 int REG_PCI_STSCMD ;
 scalar_t__ edac_op_state ;
 int edac_pci_read_dword (struct pci_dev*,int ,int *) ;
 int edac_pci_write_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void amd8111_pci_bridge_exit(struct amd8111_pci_info *pci_info)
{
 u32 val32;
 struct pci_dev *dev = pci_info->dev;

 if (edac_op_state == EDAC_OPSTATE_POLL) {

  edac_pci_read_dword(dev, REG_PCI_STSCMD, &val32);
  val32 &= ~PCI_STSCMD_SERREN;
  edac_pci_write_dword(dev, REG_PCI_STSCMD, val32);


  edac_pci_read_dword(dev, REG_HT_LINK, &val32);
  val32 &= ~HT_LINK_CRCFEN;
  edac_pci_write_dword(dev, REG_HT_LINK, val32);


  edac_pci_read_dword(dev, REG_PCI_INTBRG_CTRL, &val32);
  val32 &= ~PCI_INTBRG_CTRL_POLL_MASK;
  edac_pci_write_dword(dev, REG_PCI_INTBRG_CTRL, val32);
 }
}
