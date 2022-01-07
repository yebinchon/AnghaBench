
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hfi1_ibdev {TYPE_1__* fault; } ;
struct TYPE_2__ {int direction; scalar_t__ fault_skip_usec; scalar_t__ skip_usec; scalar_t__ fault_skip; scalar_t__ skip; int attr; int opcodes; scalar_t__ opcode; int enable; } ;


 int BITS_PER_BYTE ;
 scalar_t__ bitmap_empty (int ,int) ;
 scalar_t__ jiffies ;
 int should_fail (int *,int) ;
 int test_bit (int ,int ) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static bool __hfi1_should_fault(struct hfi1_ibdev *ibd, u32 opcode,
    u8 direction)
{
 bool ret = 0;

 if (!ibd->fault || !ibd->fault->enable)
  return 0;
 if (!(ibd->fault->direction & direction))
  return 0;
 if (ibd->fault->opcode) {
  if (bitmap_empty(ibd->fault->opcodes,
     (sizeof(ibd->fault->opcodes) *
      BITS_PER_BYTE)))
   return 0;
  if (!(test_bit(opcode, ibd->fault->opcodes)))
   return 0;
 }
 if (ibd->fault->fault_skip_usec &&
     time_before(jiffies, ibd->fault->skip_usec))
  return 0;
 if (ibd->fault->fault_skip && ibd->fault->skip) {
  ibd->fault->skip--;
  return 0;
 }
 ret = should_fail(&ibd->fault->attr, 1);
 if (ret) {
  ibd->fault->skip = ibd->fault->fault_skip;
  ibd->fault->skip_usec = jiffies +
   usecs_to_jiffies(ibd->fault->fault_skip_usec);
 }
 return ret;
}
