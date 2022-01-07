
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct send_context_info {int type; int allocated; } ;
struct hfi1_devdata {scalar_t__ num_send_contexts; scalar_t__* hw_to_sw; struct send_context_info* send_contexts; } ;


 int ENOSPC ;
 scalar_t__ chip_send_contexts (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;

__attribute__((used)) static int sc_hw_alloc(struct hfi1_devdata *dd, int type, u32 *sw_index,
         u32 *hw_context)
{
 struct send_context_info *sci;
 u32 index;
 u32 context;

 for (index = 0, sci = &dd->send_contexts[0];
   index < dd->num_send_contexts; index++, sci++) {
  if (sci->type == type && sci->allocated == 0) {
   sci->allocated = 1;

   context = chip_send_contexts(dd) - index - 1;
   dd->hw_to_sw[context] = index;
   *sw_index = index;
   *hw_context = context;
   return 0;
  }
 }
 dd_dev_err(dd, "Unable to locate a free type %d send context\n", type);
 return -ENOSPC;
}
