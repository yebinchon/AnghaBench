
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int F17H_M01H_REPORTED_TEMP_CTRL_OFFSET ;
 int amd_pci_dev_to_node_id (struct pci_dev*) ;
 int amd_smn_read (int ,int ,int *) ;

__attribute__((used)) static void read_tempreg_nb_f17(struct pci_dev *pdev, u32 *regval)
{
 amd_smn_read(amd_pci_dev_to_node_id(pdev),
       F17H_M01H_REPORTED_TEMP_CTRL_OFFSET, regval);
}
