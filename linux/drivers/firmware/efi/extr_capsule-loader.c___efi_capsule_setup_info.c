
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int imagesize; int flags; int guid; } ;
struct capsule_info {void* phys; void* pages; int reset_type; TYPE_1__ header; int total_size; } ;
typedef int phys_addr_t ;


 size_t ALIGN (int ,size_t) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int __GFP_ZERO ;
 int efi_capsule_supported (int ,int ,int ,int *) ;
 void* krealloc (void*,size_t,int) ;
 int pr_err (char*) ;

int __efi_capsule_setup_info(struct capsule_info *cap_info)
{
 size_t pages_needed;
 int ret;
 void *temp_page;

 pages_needed = ALIGN(cap_info->total_size, PAGE_SIZE) / PAGE_SIZE;

 if (pages_needed == 0) {
  pr_err("invalid capsule size\n");
  return -EINVAL;
 }


 ret = efi_capsule_supported(cap_info->header.guid,
        cap_info->header.flags,
        cap_info->header.imagesize,
        &cap_info->reset_type);
 if (ret) {
  pr_err("capsule not supported\n");
  return ret;
 }

 temp_page = krealloc(cap_info->pages,
        pages_needed * sizeof(void *),
        GFP_KERNEL | __GFP_ZERO);
 if (!temp_page)
  return -ENOMEM;

 cap_info->pages = temp_page;

 temp_page = krealloc(cap_info->phys,
        pages_needed * sizeof(phys_addr_t *),
        GFP_KERNEL | __GFP_ZERO);
 if (!temp_page)
  return -ENOMEM;

 cap_info->phys = temp_page;

 return 0;
}
