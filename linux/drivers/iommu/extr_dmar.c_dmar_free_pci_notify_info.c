
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_pci_notify_info {int dummy; } ;


 void* dmar_pci_notify_info_buf ;
 int kfree (struct dmar_pci_notify_info*) ;

__attribute__((used)) static inline void dmar_free_pci_notify_info(struct dmar_pci_notify_info *info)
{
 if ((void *)info != dmar_pci_notify_info_buf)
  kfree(info);
}
