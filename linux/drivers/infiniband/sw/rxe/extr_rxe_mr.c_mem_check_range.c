
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct rxe_mem {int type; size_t iova; size_t length; } ;


 int EFAULT ;




int mem_check_range(struct rxe_mem *mem, u64 iova, size_t length)
{
 switch (mem->type) {
 case 130:
  return 0;

 case 128:
 case 129:
  if (iova < mem->iova ||
      length > mem->length ||
      iova > mem->iova + mem->length - length)
   return -EFAULT;
  return 0;

 default:
  return -EFAULT;
 }
}
