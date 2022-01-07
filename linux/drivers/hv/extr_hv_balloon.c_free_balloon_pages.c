
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_cnt; scalar_t__ start_page; } ;
union dm_mem_page_range {TYPE_1__ finfo; } ;
struct page {int dummy; } ;
struct hv_dynmem_device {int num_pages_ballooned; } ;
typedef scalar_t__ __u64 ;


 int __ClearPageOffline (struct page*) ;
 int __free_page (struct page*) ;
 struct page* pfn_to_page (scalar_t__) ;

__attribute__((used)) static void free_balloon_pages(struct hv_dynmem_device *dm,
    union dm_mem_page_range *range_array)
{
 int num_pages = range_array->finfo.page_cnt;
 __u64 start_frame = range_array->finfo.start_page;
 struct page *pg;
 int i;

 for (i = 0; i < num_pages; i++) {
  pg = pfn_to_page(i + start_frame);
  __ClearPageOffline(pg);
  __free_page(pg);
  dm->num_pages_ballooned--;
 }
}
