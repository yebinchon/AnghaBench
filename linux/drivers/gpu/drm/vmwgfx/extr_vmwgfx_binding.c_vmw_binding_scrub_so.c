
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_ctx_binding_state {int dirty; } ;
struct vmw_ctx_bindinfo {int ctx; } ;


 int VMW_BINDING_SO_BIT ;
 int __set_bit (int ,int *) ;
 struct vmw_ctx_binding_state* vmw_context_binding_state (int ) ;

__attribute__((used)) static int vmw_binding_scrub_so(struct vmw_ctx_bindinfo *bi, bool rebind)
{
 struct vmw_ctx_binding_state *cbs =
  vmw_context_binding_state(bi->ctx);

 __set_bit(VMW_BINDING_SO_BIT, &cbs->dirty);

 return 0;
}
