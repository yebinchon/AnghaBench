
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int lock; } ;
struct vmw_cmdbuf_header {scalar_t__ inline_space; struct vmw_cmdbuf_man* man; } ;


 int __vmw_cmdbuf_header_free (struct vmw_cmdbuf_header*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_cmdbuf_header_inline_free (struct vmw_cmdbuf_header*) ;

void vmw_cmdbuf_header_free(struct vmw_cmdbuf_header *header)
{
 struct vmw_cmdbuf_man *man = header->man;


 if (header->inline_space) {
  vmw_cmdbuf_header_inline_free(header);
  return;
 }
 spin_lock(&man->lock);
 __vmw_cmdbuf_header_free(header);
 spin_unlock(&man->lock);
}
