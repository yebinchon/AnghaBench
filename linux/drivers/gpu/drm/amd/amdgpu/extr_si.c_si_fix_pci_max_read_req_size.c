
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct amdgpu_device {int pdev; } ;


 int ffs (int) ;
 int pcie_get_readrq (int ) ;
 int pcie_set_readrq (int ,int) ;

__attribute__((used)) static void si_fix_pci_max_read_req_size(struct amdgpu_device *adev)
{
 int readrq;
 u16 v;

 readrq = pcie_get_readrq(adev->pdev);
 v = ffs(readrq) - 8;
 if ((v == 0) || (v == 6) || (v == 7))
  pcie_set_readrq(adev->pdev, 512);
}
