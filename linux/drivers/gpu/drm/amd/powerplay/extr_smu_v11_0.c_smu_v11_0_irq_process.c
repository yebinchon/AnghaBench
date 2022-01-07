
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct amdgpu_iv_entry {scalar_t__ client_id; scalar_t__ src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int devfn; } ;


 int PCI_BUS_NUM (int ) ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ SOC15_IH_CLIENTID_THM ;


 int pr_warn (char*,scalar_t__,int ,int ,...) ;

__attribute__((used)) static int smu_v11_0_irq_process(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     struct amdgpu_iv_entry *entry)
{
 uint32_t client_id = entry->client_id;
 uint32_t src_id = entry->src_id;

 if (client_id == SOC15_IH_CLIENTID_THM) {
  switch (src_id) {
  case 128:
   pr_warn("GPU over temperature range detected on PCIe %d:%d.%d!\n",
    PCI_BUS_NUM(adev->pdev->devfn),
    PCI_SLOT(adev->pdev->devfn),
    PCI_FUNC(adev->pdev->devfn));
  break;
  case 129:
   pr_warn("GPU under temperature range detected on PCIe %d:%d.%d!\n",
    PCI_BUS_NUM(adev->pdev->devfn),
    PCI_SLOT(adev->pdev->devfn),
    PCI_FUNC(adev->pdev->devfn));
  break;
  default:
   pr_warn("GPU under temperature range unknown src id (%d), detected on PCIe %d:%d.%d!\n",
    src_id,
    PCI_BUS_NUM(adev->pdev->devfn),
    PCI_SLOT(adev->pdev->devfn),
    PCI_FUNC(adev->pdev->devfn));
  break;

  }
 }

 return 0;
}
