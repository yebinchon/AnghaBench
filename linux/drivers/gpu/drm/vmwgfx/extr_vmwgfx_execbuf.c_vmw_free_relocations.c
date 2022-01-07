
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int bo_relocations; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void vmw_free_relocations(struct vmw_sw_context *sw_context)
{

 INIT_LIST_HEAD(&sw_context->bo_relocations);
}
