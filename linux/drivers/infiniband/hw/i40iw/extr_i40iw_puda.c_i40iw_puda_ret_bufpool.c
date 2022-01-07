
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_puda_rsrc {int avail_buf_count; int bufpool_lock; int bufpool; } ;
struct i40iw_puda_buf {int list; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i40iw_puda_ret_bufpool(struct i40iw_puda_rsrc *rsrc,
       struct i40iw_puda_buf *buf)
{
 unsigned long flags;

 spin_lock_irqsave(&rsrc->bufpool_lock, flags);
 list_add(&buf->list, &rsrc->bufpool);
 spin_unlock_irqrestore(&rsrc->bufpool_lock, flags);
 rsrc->avail_buf_count++;
}
