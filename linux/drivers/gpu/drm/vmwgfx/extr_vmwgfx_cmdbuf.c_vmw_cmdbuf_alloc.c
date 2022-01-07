
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_cmdbuf_man {int dummy; } ;
struct vmw_cmdbuf_header {void* cmd; TYPE_1__* cb_header; int list; struct vmw_cmdbuf_man* man; } ;
struct TYPE_2__ {int status; } ;


 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SVGA_CB_STATUS_NONE ;
 size_t VMW_CMDBUF_INLINE_SIZE ;
 int kfree (struct vmw_cmdbuf_header*) ;
 struct vmw_cmdbuf_header* kzalloc (int,int ) ;
 int vmw_cmdbuf_space_inline (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,size_t) ;
 int vmw_cmdbuf_space_pool (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,size_t,int) ;

void *vmw_cmdbuf_alloc(struct vmw_cmdbuf_man *man,
         size_t size, bool interruptible,
         struct vmw_cmdbuf_header **p_header)
{
 struct vmw_cmdbuf_header *header;
 int ret = 0;

 *p_header = ((void*)0);

 header = kzalloc(sizeof(*header), GFP_KERNEL);
 if (!header)
  return ERR_PTR(-ENOMEM);

 if (size <= VMW_CMDBUF_INLINE_SIZE)
  ret = vmw_cmdbuf_space_inline(man, header, size);
 else
  ret = vmw_cmdbuf_space_pool(man, header, size, interruptible);

 if (ret) {
  kfree(header);
  return ERR_PTR(ret);
 }

 header->man = man;
 INIT_LIST_HEAD(&header->list);
 header->cb_header->status = SVGA_CB_STATUS_NONE;
 *p_header = header;

 return header->cmd;
}
