
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_ctx_binding_state {int list; } ;
struct vmw_ctx_bindinfo {size_t bt; TYPE_1__* res; int res_list; int ctx_list; int scrubbed; int * ctx; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int binding_head; } ;


 int WARN_ON (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct vmw_ctx_bindinfo*,struct vmw_ctx_bindinfo const*,int ) ;
 int vmw_binding_drop (struct vmw_ctx_bindinfo*) ;
 TYPE_2__* vmw_binding_infos ;

__attribute__((used)) static void vmw_binding_transfer(struct vmw_ctx_binding_state *cbs,
     const struct vmw_ctx_binding_state *from,
     const struct vmw_ctx_bindinfo *bi)
{
 size_t offset = (unsigned long)bi - (unsigned long)from;
 struct vmw_ctx_bindinfo *loc = (struct vmw_ctx_bindinfo *)
  ((unsigned long) cbs + offset);

 if (loc->ctx != ((void*)0)) {
  WARN_ON(bi->scrubbed);

  vmw_binding_drop(loc);
 }

 if (bi->res != ((void*)0)) {
  memcpy(loc, bi, vmw_binding_infos[bi->bt].size);
  list_add_tail(&loc->ctx_list, &cbs->list);
  list_add_tail(&loc->res_list, &loc->res->binding_head);
 }
}
