
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct amd8131_dev_info {struct pci_dev* dev; } ;


 int INT_CTLR_DTS ;
 int INT_CTLR_DTSE ;
 int INT_CTLR_PERR ;
 int INT_CTLR_SERR ;
 int LNK_CTRL_CRCERR_A ;
 int LNK_CTRL_CRCERR_B ;
 int LNK_CTRL_CRCFEN ;
 int MEM_LIMIT_MASK ;
 int REG_INT_CTLR ;
 int REG_LNK_CTRL_A ;
 int REG_LNK_CTRL_B ;
 int REG_MEM_LIM ;
 int REG_STS_CMD ;
 int STS_CMD_SERREN ;
 int edac_pci_read_dword (struct pci_dev*,int ,int*) ;
 int edac_pci_write_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void amd8131_pcix_init(struct amd8131_dev_info *dev_info)
{
 u32 val32;
 struct pci_dev *dev = dev_info->dev;


 edac_pci_read_dword(dev, REG_MEM_LIM, &val32);
 if (val32 & MEM_LIMIT_MASK)
  edac_pci_write_dword(dev, REG_MEM_LIM, val32);


 edac_pci_read_dword(dev, REG_INT_CTLR, &val32);
 if (val32 & INT_CTLR_DTS)
  edac_pci_write_dword(dev, REG_INT_CTLR, val32);


 edac_pci_read_dword(dev, REG_LNK_CTRL_A, &val32);
 if (val32 & LNK_CTRL_CRCERR_A)
  edac_pci_write_dword(dev, REG_LNK_CTRL_A, val32);


 edac_pci_read_dword(dev, REG_LNK_CTRL_B, &val32);
 if (val32 & LNK_CTRL_CRCERR_B)
  edac_pci_write_dword(dev, REG_LNK_CTRL_B, val32);







 edac_pci_read_dword(dev, REG_INT_CTLR, &val32);
 val32 |= INT_CTLR_PERR | INT_CTLR_SERR | INT_CTLR_DTSE;
 edac_pci_write_dword(dev, REG_INT_CTLR, val32);


 edac_pci_read_dword(dev, REG_STS_CMD, &val32);
 val32 |= STS_CMD_SERREN;
 edac_pci_write_dword(dev, REG_STS_CMD, val32);


 edac_pci_read_dword(dev, REG_LNK_CTRL_A, &val32);
 val32 |= LNK_CTRL_CRCFEN;
 edac_pci_write_dword(dev, REG_LNK_CTRL_A, val32);


 edac_pci_read_dword(dev, REG_LNK_CTRL_B, &val32);
 val32 |= LNK_CTRL_CRCFEN;
 edac_pci_write_dword(dev, REG_LNK_CTRL_B, val32);
}
