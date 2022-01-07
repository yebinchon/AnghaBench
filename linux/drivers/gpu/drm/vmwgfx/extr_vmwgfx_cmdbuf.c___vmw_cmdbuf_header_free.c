
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int headers; int alloc_queue; int lock; } ;
struct vmw_cmdbuf_header {int handle; scalar_t__ cb_header; int node; scalar_t__ inline_space; struct vmw_cmdbuf_man* man; } ;


 int dma_pool_free (int ,scalar_t__,int ) ;
 int drm_mm_remove_node (int *) ;
 int kfree (struct vmw_cmdbuf_header*) ;
 int lockdep_assert_held_once (int *) ;
 int vmw_cmdbuf_header_inline_free (struct vmw_cmdbuf_header*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void __vmw_cmdbuf_header_free(struct vmw_cmdbuf_header *header)
{
 struct vmw_cmdbuf_man *man = header->man;

 lockdep_assert_held_once(&man->lock);

 if (header->inline_space) {
  vmw_cmdbuf_header_inline_free(header);
  return;
 }

 drm_mm_remove_node(&header->node);
 wake_up_all(&man->alloc_queue);
 if (header->cb_header)
  dma_pool_free(man->headers, header->cb_header,
         header->handle);
 kfree(header);
}
