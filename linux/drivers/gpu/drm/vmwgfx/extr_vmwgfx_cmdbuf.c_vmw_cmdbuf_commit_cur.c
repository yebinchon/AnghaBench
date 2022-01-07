
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_cmdbuf_man {size_t cur_pos; int cur_mutex; struct vmw_cmdbuf_header* cur; } ;
struct vmw_cmdbuf_header {size_t reserved; TYPE_1__* cb_header; } ;
struct TYPE_2__ {int flags; } ;


 int SVGA_CB_FLAG_DX_CONTEXT ;
 int WARN_ON (int) ;
 int __vmw_cmdbuf_cur_flush (struct vmw_cmdbuf_man*) ;
 int lockdep_assert_held_once (int *) ;
 int vmw_cmdbuf_cur_unlock (struct vmw_cmdbuf_man*) ;

__attribute__((used)) static void vmw_cmdbuf_commit_cur(struct vmw_cmdbuf_man *man,
      size_t size, bool flush)
{
 struct vmw_cmdbuf_header *cur = man->cur;

 lockdep_assert_held_once(&man->cur_mutex);

 WARN_ON(size > cur->reserved);
 man->cur_pos += size;
 if (!size)
  cur->cb_header->flags &= ~SVGA_CB_FLAG_DX_CONTEXT;
 if (flush)
  __vmw_cmdbuf_cur_flush(man);
 vmw_cmdbuf_cur_unlock(man);
}
