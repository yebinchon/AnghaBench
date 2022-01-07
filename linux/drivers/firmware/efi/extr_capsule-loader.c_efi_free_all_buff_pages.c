
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capsule_info {size_t index; int * pages; } ;


 size_t NO_FURTHER_WRITE_ACTION ;
 int __free_page (int ) ;

__attribute__((used)) static void efi_free_all_buff_pages(struct capsule_info *cap_info)
{
 while (cap_info->index > 0)
  __free_page(cap_info->pages[--cap_info->index]);

 cap_info->index = NO_FURTHER_WRITE_ACTION;
}
