
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int vendor; } ;
struct kgd_dev {int dummy; } ;
struct kfd_device_info {scalar_t__ needs_pci_atomics; } ;
struct kfd_dev {int init_complete; int sram_ecc_flag; int doorbell_available_index; int doorbell_mutex; int compute_profile; struct kfd2kgd_calls const* kfd2kgd; struct pci_dev* pdev; struct kfd_device_info const* device_info; struct kgd_dev* kgd; int pci_atomic_requested; } ;
struct kfd2kgd_calls {int dummy; } ;


 int GFP_KERNEL ;
 int amdgpu_amdkfd_have_atomics_support (struct kgd_dev*) ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ) ;
 int kfd_device ;
 int kfree (struct kfd_dev*) ;
 struct kfd_dev* kzalloc (int,int ) ;
 struct kfd_device_info* lookup_device_info (int ) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;

struct kfd_dev *kgd2kfd_probe(struct kgd_dev *kgd,
 struct pci_dev *pdev, const struct kfd2kgd_calls *f2g)
{
 struct kfd_dev *kfd;
 const struct kfd_device_info *device_info =
     lookup_device_info(pdev->device);

 if (!device_info) {
  dev_err(kfd_device, "kgd2kfd_probe failed\n");
  return ((void*)0);
 }

 kfd = kzalloc(sizeof(*kfd), GFP_KERNEL);
 if (!kfd)
  return ((void*)0);





 kfd->pci_atomic_requested = amdgpu_amdkfd_have_atomics_support(kgd);
 if (device_info->needs_pci_atomics &&
     !kfd->pci_atomic_requested) {
  dev_info(kfd_device,
    "skipped device %x:%x, PCI rejects atomics\n",
    pdev->vendor, pdev->device);
  kfree(kfd);
  return ((void*)0);
 }

 kfd->kgd = kgd;
 kfd->device_info = device_info;
 kfd->pdev = pdev;
 kfd->init_complete = 0;
 kfd->kfd2kgd = f2g;
 atomic_set(&kfd->compute_profile, 0);

 mutex_init(&kfd->doorbell_mutex);
 memset(&kfd->doorbell_available_index, 0,
  sizeof(kfd->doorbell_available_index));

 atomic_set(&kfd->sram_ecc_flag, 0);

 return kfd;
}
