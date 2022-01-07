
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct kgd_dev {int dummy; } ;
struct kfd_dev {int dummy; } ;
struct kfd2kgd_calls {int dummy; } ;



struct kfd_dev *kgd2kfd_probe(struct kgd_dev *kgd, struct pci_dev *pdev,
         const struct kfd2kgd_calls *f2g)
{
 return ((void*)0);
}
