
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_sw_context {int bo_relocations; int ctx; TYPE_1__* fp; } ;
struct vmw_relocation {int head; struct vmw_buffer_object* vbo; TYPE_2__* location; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_5__ {int gmrId; } ;
struct TYPE_4__ {int tfile; } ;
typedef TYPE_2__ SVGAGuestPtr ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct vmw_buffer_object*) ;
 int PTR_ERR (struct vmw_buffer_object*) ;
 int VMW_DEBUG_USER (char*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;
 struct vmw_buffer_object* vmw_user_bo_noref_lookup (int ,int ) ;
 int vmw_user_bo_noref_release () ;
 int vmw_validation_add_bo (int ,struct vmw_buffer_object*,int,int) ;
 struct vmw_relocation* vmw_validation_mem_alloc (int ,int) ;
 int vmw_validation_preload_bo (int ) ;

__attribute__((used)) static int vmw_translate_guest_ptr(struct vmw_private *dev_priv,
       struct vmw_sw_context *sw_context,
       SVGAGuestPtr *ptr,
       struct vmw_buffer_object **vmw_bo_p)
{
 struct vmw_buffer_object *vmw_bo;
 uint32_t handle = ptr->gmrId;
 struct vmw_relocation *reloc;
 int ret;

 vmw_validation_preload_bo(sw_context->ctx);
 vmw_bo = vmw_user_bo_noref_lookup(sw_context->fp->tfile, handle);
 if (IS_ERR(vmw_bo)) {
  VMW_DEBUG_USER("Could not find or use GMR region.\n");
  return PTR_ERR(vmw_bo);
 }

 ret = vmw_validation_add_bo(sw_context->ctx, vmw_bo, 0, 0);
 vmw_user_bo_noref_release();
 if (unlikely(ret != 0))
  return ret;

 reloc = vmw_validation_mem_alloc(sw_context->ctx, sizeof(*reloc));
 if (!reloc)
  return -ENOMEM;

 reloc->location = ptr;
 reloc->vbo = vmw_bo;
 *vmw_bo_p = vmw_bo;
 list_add_tail(&reloc->head, &sw_context->bo_relocations);

 return 0;
}
