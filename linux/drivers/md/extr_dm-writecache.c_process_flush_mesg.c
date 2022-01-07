
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int writeback_all; int writeback_wq; int writeback_work; int ti; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 scalar_t__ dm_suspended (int ) ;
 int flush_workqueue (int ) ;
 int queue_work (int ,int *) ;
 int wc_lock (struct dm_writecache*) ;
 int wc_unlock (struct dm_writecache*) ;
 int writecache_flush (struct dm_writecache*) ;
 scalar_t__ writecache_has_error (struct dm_writecache*) ;

__attribute__((used)) static int process_flush_mesg(unsigned argc, char **argv, struct dm_writecache *wc)
{
 if (argc != 1)
  return -EINVAL;

 wc_lock(wc);
 if (dm_suspended(wc->ti)) {
  wc_unlock(wc);
  return -EBUSY;
 }
 if (writecache_has_error(wc)) {
  wc_unlock(wc);
  return -EIO;
 }

 writecache_flush(wc);
 wc->writeback_all++;
 queue_work(wc->writeback_wq, &wc->writeback_work);
 wc_unlock(wc);

 flush_workqueue(wc->writeback_wq);

 wc_lock(wc);
 wc->writeback_all--;
 if (writecache_has_error(wc)) {
  wc_unlock(wc);
  return -EIO;
 }
 wc_unlock(wc);

 return 0;
}
