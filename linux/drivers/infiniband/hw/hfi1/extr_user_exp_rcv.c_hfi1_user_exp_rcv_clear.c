
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tidinfo ;
struct hfi1_tid_info {int tidcnt; int tidlist; } ;
struct hfi1_filedata {int tid_used; int tid_lock; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_ctxtdata {int exp_mutex; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TID ;
 int hfi1_cdbg (int ,char*,int) ;
 int kfree (int *) ;
 int * memdup_user (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int u64_to_user_ptr (int ) ;
 scalar_t__ unlikely (int) ;
 int unprogram_rcvarray (struct hfi1_filedata*,int ,int *) ;

int hfi1_user_exp_rcv_clear(struct hfi1_filedata *fd,
       struct hfi1_tid_info *tinfo)
{
 int ret = 0;
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 u32 *tidinfo;
 unsigned tididx;

 if (unlikely(tinfo->tidcnt > fd->tid_used))
  return -EINVAL;

 tidinfo = memdup_user(u64_to_user_ptr(tinfo->tidlist),
         sizeof(tidinfo[0]) * tinfo->tidcnt);
 if (IS_ERR(tidinfo))
  return PTR_ERR(tidinfo);

 mutex_lock(&uctxt->exp_mutex);
 for (tididx = 0; tididx < tinfo->tidcnt; tididx++) {
  ret = unprogram_rcvarray(fd, tidinfo[tididx], ((void*)0));
  if (ret) {
   hfi1_cdbg(TID, "Failed to unprogram rcv array %d",
      ret);
   break;
  }
 }
 spin_lock(&fd->tid_lock);
 fd->tid_used -= tididx;
 spin_unlock(&fd->tid_lock);
 tinfo->tidcnt = tididx;
 mutex_unlock(&uctxt->exp_mutex);

 kfree(tidinfo);
 return ret;
}
