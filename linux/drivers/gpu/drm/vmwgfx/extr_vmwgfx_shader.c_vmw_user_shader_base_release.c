
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int dummy; } ;
struct ttm_base_object {int dummy; } ;


 int vmw_resource_unreference (struct vmw_resource**) ;
 struct vmw_resource* vmw_user_shader_base_to_res (struct ttm_base_object*) ;

__attribute__((used)) static void vmw_user_shader_base_release(struct ttm_base_object **p_base)
{
 struct ttm_base_object *base = *p_base;
 struct vmw_resource *res = vmw_user_shader_base_to_res(base);

 *p_base = ((void*)0);
 vmw_resource_unreference(&res);
}
