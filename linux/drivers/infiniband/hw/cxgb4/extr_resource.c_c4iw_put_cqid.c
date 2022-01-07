
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_rdev {int dummy; } ;
struct c4iw_qid_list {int entry; int qid; } ;
struct c4iw_dev_ucontext {int lock; int cqids; } ;


 int GFP_KERNEL ;
 struct c4iw_qid_list* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;

void c4iw_put_cqid(struct c4iw_rdev *rdev, u32 qid,
     struct c4iw_dev_ucontext *uctx)
{
 struct c4iw_qid_list *entry;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return;
 pr_debug("qid 0x%x\n", qid);
 entry->qid = qid;
 mutex_lock(&uctx->lock);
 list_add_tail(&entry->entry, &uctx->cqids);
 mutex_unlock(&uctx->lock);
}
