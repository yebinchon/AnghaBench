
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_ctx_binding_state {int list; } ;
struct vmw_ctx_bindinfo {size_t bt; int scrubbed; int res_list; int ctx_list; int * ctx; } ;
struct vmw_binding_info {int size; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int memcpy (struct vmw_ctx_bindinfo*,struct vmw_ctx_bindinfo const*,int ) ;
 int vmw_binding_drop (struct vmw_ctx_bindinfo*) ;
 struct vmw_binding_info* vmw_binding_infos ;
 struct vmw_ctx_bindinfo* vmw_binding_loc (struct vmw_ctx_binding_state*,size_t,int ,int ) ;

void vmw_binding_add(struct vmw_ctx_binding_state *cbs,
      const struct vmw_ctx_bindinfo *bi,
      u32 shader_slot, u32 slot)
{
 struct vmw_ctx_bindinfo *loc =
  vmw_binding_loc(cbs, bi->bt, shader_slot, slot);
 const struct vmw_binding_info *b = &vmw_binding_infos[bi->bt];

 if (loc->ctx != ((void*)0))
  vmw_binding_drop(loc);

 memcpy(loc, bi, b->size);
 loc->scrubbed = 0;
 list_add(&loc->ctx_list, &cbs->list);
 INIT_LIST_HEAD(&loc->res_list);
}
