
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int wtimer; int writer_ts; } ;


 int EINTR ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ jiffies ;
 int kthread_create (int ,struct pblk*,char*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pblk_err (struct pblk*,char*,int) ;
 int pblk_write_timer_fn ;
 int pblk_write_ts ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pblk_writer_init(struct pblk *pblk)
{
 pblk->writer_ts = kthread_create(pblk_write_ts, pblk, "pblk-writer-t");
 if (IS_ERR(pblk->writer_ts)) {
  int err = PTR_ERR(pblk->writer_ts);

  if (err != -EINTR)
   pblk_err(pblk, "could not allocate writer kthread (%d)\n",
     err);
  return err;
 }

 timer_setup(&pblk->wtimer, pblk_write_timer_fn, 0);
 mod_timer(&pblk->wtimer, jiffies + msecs_to_jiffies(100));

 return 0;
}
