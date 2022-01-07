
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int pdev; } ;


 int IE31200_ERRSTS ;
 int IE31200_ERRSTS_BITS ;
 int pci_write_bits16 (int ,int ,int ,int ) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void ie31200_clear_error_info(struct mem_ctl_info *mci)
{




 pci_write_bits16(to_pci_dev(mci->pdev), IE31200_ERRSTS,
    IE31200_ERRSTS_BITS, IE31200_ERRSTS_BITS);
}
