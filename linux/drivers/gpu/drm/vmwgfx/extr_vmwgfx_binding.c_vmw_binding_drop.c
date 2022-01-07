
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_ctx_bindinfo {int * ctx; int res_list; int ctx_list; } ;


 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void vmw_binding_drop(struct vmw_ctx_bindinfo *bi)
{
 list_del(&bi->ctx_list);
 if (!list_empty(&bi->res_list))
  list_del(&bi->res_list);
 bi->ctx = ((void*)0);
}
