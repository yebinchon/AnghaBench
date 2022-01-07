
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; } ;
struct pasid_state {int lock; TYPE_1__* pri; scalar_t__ invalid; } ;
struct notifier_block {int dummy; } ;
struct iommu_dev_data {scalar_t__ defer_attach; } ;
struct fault {int tag; int finish; int work; int flags; int pasid; struct pasid_state* state; int address; struct device_state* dev_state; } ;
struct device_state {struct pci_dev* pdev; } ;
struct amd_iommu_fault {int tag; int device_id; int flags; int pasid; int address; } ;
struct TYPE_2__ {int finish; int inflight; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int PCI_BUS_NUM (int) ;
 int PPR_INVALID ;
 int amd_iommu_complete_ppr (struct pci_dev*,int ,int ,int) ;
 int * amd_iommu_rlookup_table ;
 int atomic_inc (int *) ;
 int do_fault ;
 int finish_pri_tag (struct device_state*,struct pasid_state*,int) ;
 struct iommu_dev_data* get_dev_data (int *) ;
 struct device_state* get_device_state (int) ;
 struct pasid_state* get_pasid_state (struct device_state*,int ) ;
 int iommu_wq ;
 struct fault* kzalloc (int,int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int) ;
 int put_device_state (struct device_state*) ;
 int put_pasid_state (struct pasid_state*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ translation_pre_enabled (int ) ;

__attribute__((used)) static int ppr_notifier(struct notifier_block *nb, unsigned long e, void *data)
{
 struct amd_iommu_fault *iommu_fault;
 struct pasid_state *pasid_state;
 struct device_state *dev_state;
 unsigned long flags;
 struct fault *fault;
 bool finish;
 u16 tag, devid;
 int ret;
 struct iommu_dev_data *dev_data;
 struct pci_dev *pdev = ((void*)0);

 iommu_fault = data;
 tag = iommu_fault->tag & 0x1ff;
 finish = (iommu_fault->tag >> 9) & 1;

 devid = iommu_fault->device_id;
 pdev = pci_get_domain_bus_and_slot(0, PCI_BUS_NUM(devid),
        devid & 0xff);
 if (!pdev)
  return -ENODEV;
 dev_data = get_dev_data(&pdev->dev);


 ret = NOTIFY_DONE;
 if (translation_pre_enabled(amd_iommu_rlookup_table[devid])
  && dev_data->defer_attach) {
  amd_iommu_complete_ppr(pdev, iommu_fault->pasid,
           PPR_INVALID, tag);
  goto out;
 }

 dev_state = get_device_state(iommu_fault->device_id);
 if (dev_state == ((void*)0))
  goto out;

 pasid_state = get_pasid_state(dev_state, iommu_fault->pasid);
 if (pasid_state == ((void*)0) || pasid_state->invalid) {

  amd_iommu_complete_ppr(dev_state->pdev, iommu_fault->pasid,
           PPR_INVALID, tag);
  goto out_drop_state;
 }

 spin_lock_irqsave(&pasid_state->lock, flags);
 atomic_inc(&pasid_state->pri[tag].inflight);
 if (finish)
  pasid_state->pri[tag].finish = 1;
 spin_unlock_irqrestore(&pasid_state->lock, flags);

 fault = kzalloc(sizeof(*fault), GFP_ATOMIC);
 if (fault == ((void*)0)) {

  finish_pri_tag(dev_state, pasid_state, tag);
  goto out_drop_state;
 }

 fault->dev_state = dev_state;
 fault->address = iommu_fault->address;
 fault->state = pasid_state;
 fault->tag = tag;
 fault->finish = finish;
 fault->pasid = iommu_fault->pasid;
 fault->flags = iommu_fault->flags;
 INIT_WORK(&fault->work, do_fault);

 queue_work(iommu_wq, &fault->work);

 ret = NOTIFY_OK;

out_drop_state:

 if (ret != NOTIFY_OK && pasid_state)
  put_pasid_state(pasid_state);

 put_device_state(dev_state);

out:
 return ret;
}
