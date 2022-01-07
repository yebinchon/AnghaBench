
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_wss {unsigned long pages_mask; int total_count; int * entries; } ;


 int BITS_PER_LONG ;
 unsigned long PAGE_SHIFT ;
 int atomic_inc (int *) ;
 int test_and_set_bit (int,int *) ;
 int wss_advance_clean_counter (struct rvt_wss*) ;

__attribute__((used)) static void wss_insert(struct rvt_wss *wss, void *address)
{
 u32 page = ((unsigned long)address >> PAGE_SHIFT) & wss->pages_mask;
 u32 entry = page / BITS_PER_LONG;
 u32 nr = page & (BITS_PER_LONG - 1);

 if (!test_and_set_bit(nr, &wss->entries[entry]))
  atomic_inc(&wss->total_count);

 wss_advance_clean_counter(wss);
}
