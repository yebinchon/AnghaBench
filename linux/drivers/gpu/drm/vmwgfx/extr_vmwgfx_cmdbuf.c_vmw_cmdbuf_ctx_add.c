
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_cmdbuf_man {TYPE_2__* ctx; } ;
struct vmw_cmdbuf_header {size_t cb_context; int list; TYPE_1__* cb_header; } ;
struct TYPE_4__ {int submitted; } ;
struct TYPE_3__ {int flags; scalar_t__ dxContext; } ;
typedef size_t SVGACBContext ;


 int SVGA_CB_FLAG_DX_CONTEXT ;
 int list_add_tail (int *,int *) ;
 int vmw_cmdbuf_man_process (struct vmw_cmdbuf_man*) ;

__attribute__((used)) static void vmw_cmdbuf_ctx_add(struct vmw_cmdbuf_man *man,
          struct vmw_cmdbuf_header *header,
          SVGACBContext cb_context)
{
 if (!(header->cb_header->flags & SVGA_CB_FLAG_DX_CONTEXT))
  header->cb_header->dxContext = 0;
 header->cb_context = cb_context;
 list_add_tail(&header->list, &man->ctx[cb_context].submitted);

 vmw_cmdbuf_man_process(man);
}
