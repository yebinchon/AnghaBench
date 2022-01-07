
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct task_struct {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int * ops; } ;
struct pasid_state {int pasid; int invalid; TYPE_1__ mn; struct mm_struct* mm; struct device_state* device_state; int lock; int wq; int count; } ;
struct mm_struct {int pgd; } ;
struct device_state {int max_pasids; int domain; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __pa (int ) ;
 int amd_iommu_domain_set_gcr3 (int ,int,int ) ;
 int amd_iommu_v2_supported () ;
 int atomic_set (int *,int) ;
 int clear_pasid_state (struct device_state*,int) ;
 int device_id (struct pci_dev*) ;
 int free_pasid_state (struct pasid_state*) ;
 struct device_state* get_device_state (int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int init_waitqueue_head (int *) ;
 int iommu_mn ;
 struct pasid_state* kzalloc (int,int ) ;
 int might_sleep () ;
 int mmput (struct mm_struct*) ;
 int mmu_notifier_register (TYPE_1__*,struct mm_struct*) ;
 int mmu_notifier_unregister (TYPE_1__*,struct mm_struct*) ;
 int put_device_state (struct device_state*) ;
 int set_pasid_state (struct device_state*,struct pasid_state*,int) ;
 int spin_lock_init (int *) ;

int amd_iommu_bind_pasid(struct pci_dev *pdev, int pasid,
    struct task_struct *task)
{
 struct pasid_state *pasid_state;
 struct device_state *dev_state;
 struct mm_struct *mm;
 u16 devid;
 int ret;

 might_sleep();

 if (!amd_iommu_v2_supported())
  return -ENODEV;

 devid = device_id(pdev);
 dev_state = get_device_state(devid);

 if (dev_state == ((void*)0))
  return -EINVAL;

 ret = -EINVAL;
 if (pasid < 0 || pasid >= dev_state->max_pasids)
  goto out;

 ret = -ENOMEM;
 pasid_state = kzalloc(sizeof(*pasid_state), GFP_KERNEL);
 if (pasid_state == ((void*)0))
  goto out;


 atomic_set(&pasid_state->count, 1);
 init_waitqueue_head(&pasid_state->wq);
 spin_lock_init(&pasid_state->lock);

 mm = get_task_mm(task);
 pasid_state->mm = mm;
 pasid_state->device_state = dev_state;
 pasid_state->pasid = pasid;
 pasid_state->invalid = 1;

 pasid_state->mn.ops = &iommu_mn;

 if (pasid_state->mm == ((void*)0))
  goto out_free;

 mmu_notifier_register(&pasid_state->mn, mm);

 ret = set_pasid_state(dev_state, pasid_state, pasid);
 if (ret)
  goto out_unregister;

 ret = amd_iommu_domain_set_gcr3(dev_state->domain, pasid,
     __pa(pasid_state->mm->pgd));
 if (ret)
  goto out_clear_state;


 pasid_state->invalid = 0;






 mmput(mm);

 return 0;

out_clear_state:
 clear_pasid_state(dev_state, pasid);

out_unregister:
 mmu_notifier_unregister(&pasid_state->mn, mm);
 mmput(mm);

out_free:
 free_pasid_state(pasid_state);

out:
 put_device_state(dev_state);

 return ret;
}
