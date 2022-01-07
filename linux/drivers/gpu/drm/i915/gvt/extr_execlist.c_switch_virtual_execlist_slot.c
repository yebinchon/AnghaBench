
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_execlist {TYPE_2__* pending_slot; TYPE_1__* running_context; TYPE_2__* running_slot; } ;
struct TYPE_4__ {int index; TYPE_1__* ctx; } ;
struct TYPE_3__ {int context_id; } ;


 int gvt_dbg_el (char*,int,int ,int) ;

__attribute__((used)) static void switch_virtual_execlist_slot(struct intel_vgpu_execlist *execlist)
{
 gvt_dbg_el("[before] running slot %d/context %x pending slot %d\n",
   execlist->running_slot ?
   execlist->running_slot->index : -1,
   execlist->running_context ?
   execlist->running_context->context_id : 0,
   execlist->pending_slot ?
   execlist->pending_slot->index : -1);

 execlist->running_slot = execlist->pending_slot;
 execlist->pending_slot = ((void*)0);
 execlist->running_context = execlist->running_context ?
  &execlist->running_slot->ctx[0] : ((void*)0);

 gvt_dbg_el("[after] running slot %d/context %x pending slot %d\n",
   execlist->running_slot ?
   execlist->running_slot->index : -1,
   execlist->running_context ?
   execlist->running_context->context_id : 0,
   execlist->pending_slot ?
   execlist->pending_slot->index : -1);
}
