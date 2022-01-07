
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static int __arm_smmu_get_pci_sid(struct pci_dev *pdev, u16 alias, void *data)
{
 *((__be32 *)data) = cpu_to_be32(alias);
 return 0;
}
