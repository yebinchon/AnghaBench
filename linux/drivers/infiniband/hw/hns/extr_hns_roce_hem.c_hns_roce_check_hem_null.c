
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef size_t u32 ;
struct hns_roce_hem {int dummy; } ;



__attribute__((used)) static bool hns_roce_check_hem_null(struct hns_roce_hem **hem, u64 start_idx,
       u32 bt_chunk_num, u64 hem_max_num)
{
 u64 check_max_num = start_idx + bt_chunk_num;
 u64 i;

 for (i = start_idx; (i < check_max_num) && (i < hem_max_num); i++)
  if (hem[i])
   return 0;

 return 1;
}
