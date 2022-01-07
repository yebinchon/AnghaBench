
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct i40iw_puda_rsrc {int bufpool_lock; int stats_buf_alloc_fail; int avail_buf_count; struct list_head bufpool; } ;
struct i40iw_puda_buf {int dummy; } ;


 struct i40iw_puda_buf* i40iw_puda_get_listbuf (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct i40iw_puda_buf *i40iw_puda_get_bufpool(struct i40iw_puda_rsrc *rsrc)
{
 struct i40iw_puda_buf *buf = ((void*)0);
 struct list_head *list = &rsrc->bufpool;
 unsigned long flags;

 spin_lock_irqsave(&rsrc->bufpool_lock, flags);
 buf = i40iw_puda_get_listbuf(list);
 if (buf)
  rsrc->avail_buf_count--;
 else
  rsrc->stats_buf_alloc_fail++;
 spin_unlock_irqrestore(&rsrc->bufpool_lock, flags);
 return buf;
}
