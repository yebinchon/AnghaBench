
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvt_wss {int num_entries; int total_count; int * entries; int clean_entry; int clean_period; int clean_counter; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int atomic_sub (int,int *) ;
 int hweight64 (int ) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static void wss_advance_clean_counter(struct rvt_wss *wss)
{
 int entry;
 int weight;
 unsigned long bits;


 if (atomic_dec_and_test(&wss->clean_counter)) {
  atomic_set(&wss->clean_counter, wss->clean_period);







  entry = (atomic_inc_return(&wss->clean_entry) - 1)
   & (wss->num_entries - 1);


  bits = xchg(&wss->entries[entry], 0);
  weight = hweight64((u64)bits);

  if (weight)
   atomic_sub(weight, &wss->total_count);
 }
}
