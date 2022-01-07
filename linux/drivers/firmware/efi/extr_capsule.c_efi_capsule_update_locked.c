
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_physical_addr_t ;
typedef int efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ (* update_capsule ) (int **,int,int ) ;} ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int capsule_mutex ;
 int capsule_pending ;
 TYPE_1__ efi ;
 int efi_reset_type ;
 int efi_status_to_err (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 int page_to_phys (struct page*) ;
 int pr_err (char*,int,int) ;
 int pr_warn (char*) ;
 int stop_capsules ;
 scalar_t__ stub1 (int **,int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
efi_capsule_update_locked(efi_capsule_header_t *capsule,
     struct page **sg_pages, int reset)
{
 efi_physical_addr_t sglist_phys;
 efi_status_t status;

 lockdep_assert_held(&capsule_mutex);





 if (efi_reset_type >= 0 && efi_reset_type != reset) {
  pr_err("Conflicting capsule reset type %d (%d).\n",
         reset, efi_reset_type);
  return -EINVAL;
 }







 if (unlikely(stop_capsules)) {
  pr_warn("Capsule update raced with reboot, aborting.\n");
  return -EINVAL;
 }

 sglist_phys = page_to_phys(sg_pages[0]);

 status = efi.update_capsule(&capsule, 1, sglist_phys);
 if (status == EFI_SUCCESS) {
  capsule_pending = 1;
  efi_reset_type = reset;
 }

 return efi_status_to_err(status);
}
