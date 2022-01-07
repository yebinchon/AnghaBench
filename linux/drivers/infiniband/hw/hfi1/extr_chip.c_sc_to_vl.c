
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_context_info {scalar_t__ type; struct send_context* sc; } ;
struct send_context {int dummy; } ;
struct hfi1_devdata {TYPE_1__* vld; struct send_context_info* send_contexts; } ;
struct TYPE_2__ {struct send_context* sc; } ;


 scalar_t__ SC_KERNEL ;
 scalar_t__ SC_VL15 ;
 int num_vls ;

__attribute__((used)) static int sc_to_vl(struct hfi1_devdata *dd, int sw_index)
{
 struct send_context_info *sci;
 struct send_context *sc;
 int i;

 sci = &dd->send_contexts[sw_index];


 if ((sci->type != SC_KERNEL) && (sci->type != SC_VL15))
  return -1;

 sc = sci->sc;
 if (!sc)
  return -1;
 if (dd->vld[15].sc == sc)
  return 15;
 for (i = 0; i < num_vls; i++)
  if (dd->vld[i].sc == sc)
   return i;

 return -1;
}
