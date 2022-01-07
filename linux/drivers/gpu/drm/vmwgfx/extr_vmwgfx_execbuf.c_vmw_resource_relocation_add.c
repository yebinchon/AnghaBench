
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int res_relocations; int ctx; } ;
struct vmw_resource_relocation {unsigned long offset; int rel_type; int head; struct vmw_resource const* res; } ;
struct vmw_resource {int dummy; } ;
typedef enum vmw_resource_relocation_type { ____Placeholder_vmw_resource_relocation_type } vmw_resource_relocation_type ;


 int ENOMEM ;
 int VMW_DEBUG_USER (char*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;
 struct vmw_resource_relocation* vmw_validation_mem_alloc (int ,int) ;

__attribute__((used)) static int vmw_resource_relocation_add(struct vmw_sw_context *sw_context,
           const struct vmw_resource *res,
           unsigned long offset,
           enum vmw_resource_relocation_type
           rel_type)
{
 struct vmw_resource_relocation *rel;

 rel = vmw_validation_mem_alloc(sw_context->ctx, sizeof(*rel));
 if (unlikely(!rel)) {
  VMW_DEBUG_USER("Failed to allocate a resource relocation.\n");
  return -ENOMEM;
 }

 rel->res = res;
 rel->offset = offset;
 rel->rel_type = rel_type;
 list_add_tail(&rel->head, &sw_context->res_relocations);

 return 0;
}
