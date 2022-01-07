
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_lun {int wr_sem; } ;
struct pblk {struct pblk_lun* luns; } ;


 int EINTR ;
 int ETIME ;
 int down_timeout (int *,int ) ;
 int msecs_to_jiffies (int) ;
 int pblk_err (struct pblk*,char*,int) ;

__attribute__((used)) static void __pblk_down_chunk(struct pblk *pblk, int pos)
{
 struct pblk_lun *rlun = &pblk->luns[pos];
 int ret;






 ret = down_timeout(&rlun->wr_sem, msecs_to_jiffies(30000));
 if (ret == -ETIME || ret == -EINTR)
  pblk_err(pblk, "taking lun semaphore timed out: err %d\n",
    -ret);
}
