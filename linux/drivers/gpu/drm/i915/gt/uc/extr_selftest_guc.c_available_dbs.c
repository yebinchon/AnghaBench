
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef unsigned long u16 ;
struct intel_guc {int doorbell_bitmap; } ;


 scalar_t__ GUC_CLIENT_PRIORITY_HIGH ;
 int GUC_NUM_DOORBELLS ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;

__attribute__((used)) static bool available_dbs(struct intel_guc *guc, u32 priority)
{
 unsigned long offset;
 unsigned long end;
 u16 id;


 offset = 0;
 end = GUC_NUM_DOORBELLS / 2;
 if (priority <= GUC_CLIENT_PRIORITY_HIGH) {
  offset = end;
  end += offset;
 }

 id = find_next_zero_bit(guc->doorbell_bitmap, end, offset);
 if (id < end)
  return 1;

 return 0;
}
