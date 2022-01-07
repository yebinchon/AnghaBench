
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct vmw_ctx_binding_state {struct list_head list; } ;



struct list_head *vmw_binding_state_list(struct vmw_ctx_binding_state *cbs)
{
 return &cbs->list;
}
