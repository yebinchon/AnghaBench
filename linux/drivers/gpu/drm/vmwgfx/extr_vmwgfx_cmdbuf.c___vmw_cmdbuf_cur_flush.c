
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_cmdbuf_man {scalar_t__ cur_pos; struct vmw_cmdbuf_header* cur; int lock; int cur_mutex; } ;
struct vmw_cmdbuf_header {TYPE_1__* cb_header; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int SVGA_CB_CONTEXT_0 ;
 int __vmw_cmdbuf_header_free (struct vmw_cmdbuf_header*) ;
 int lockdep_assert_held_once (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_cmdbuf_ctx_add (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_header*,int ) ;

__attribute__((used)) static void __vmw_cmdbuf_cur_flush(struct vmw_cmdbuf_man *man)
{
 struct vmw_cmdbuf_header *cur = man->cur;

 lockdep_assert_held_once(&man->cur_mutex);

 if (!cur)
  return;

 spin_lock(&man->lock);
 if (man->cur_pos == 0) {
  __vmw_cmdbuf_header_free(cur);
  goto out_unlock;
 }

 man->cur->cb_header->length = man->cur_pos;
 vmw_cmdbuf_ctx_add(man, man->cur, SVGA_CB_CONTEXT_0);
out_unlock:
 spin_unlock(&man->lock);
 man->cur = ((void*)0);
 man->cur_pos = 0;
}
