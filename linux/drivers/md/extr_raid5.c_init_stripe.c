
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int batch_head; int disks; scalar_t__ state; int cpu; scalar_t__ overwrite_disks; scalar_t__ sector; struct r5dev* dev; scalar_t__ generation; int count; struct r5conf* raid_conf; } ;
struct r5dev {int sector; scalar_t__ flags; scalar_t__ written; scalar_t__ towrite; scalar_t__ read; scalar_t__ toread; } ;
struct r5conf {int previous_raid_disks; int raid_disks; int gen_lock; scalar_t__ generation; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 int R5_LOCKED ;
 int STRIPE_BATCH_READY ;
 int STRIPE_HANDLE ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int insert_hash (struct r5conf*,struct stripe_head*) ;
 int pr_debug (char*,unsigned long long) ;
 int pr_err (char*,unsigned long long,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int raid5_compute_blocknr (struct stripe_head*,int,int) ;
 int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,int) ;
 int set_bit (int ,scalar_t__*) ;
 int smp_processor_id () ;
 int stripe_operations_active (struct stripe_head*) ;
 int stripe_set_idx (scalar_t__,struct r5conf*,int,struct stripe_head*) ;
 int test_bit (int ,scalar_t__*) ;

__attribute__((used)) static void init_stripe(struct stripe_head *sh, sector_t sector, int previous)
{
 struct r5conf *conf = sh->raid_conf;
 int i, seq;

 BUG_ON(atomic_read(&sh->count) != 0);
 BUG_ON(test_bit(STRIPE_HANDLE, &sh->state));
 BUG_ON(stripe_operations_active(sh));
 BUG_ON(sh->batch_head);

 pr_debug("init_stripe called, stripe %llu\n",
  (unsigned long long)sector);
retry:
 seq = read_seqcount_begin(&conf->gen_lock);
 sh->generation = conf->generation - previous;
 sh->disks = previous ? conf->previous_raid_disks : conf->raid_disks;
 sh->sector = sector;
 stripe_set_idx(sector, conf, previous, sh);
 sh->state = 0;

 for (i = sh->disks; i--; ) {
  struct r5dev *dev = &sh->dev[i];

  if (dev->toread || dev->read || dev->towrite || dev->written ||
      test_bit(R5_LOCKED, &dev->flags)) {
   pr_err("sector=%llx i=%d %p %p %p %p %d\n",
          (unsigned long long)sh->sector, i, dev->toread,
          dev->read, dev->towrite, dev->written,
          test_bit(R5_LOCKED, &dev->flags));
   WARN_ON(1);
  }
  dev->flags = 0;
  dev->sector = raid5_compute_blocknr(sh, i, previous);
 }
 if (read_seqcount_retry(&conf->gen_lock, seq))
  goto retry;
 sh->overwrite_disks = 0;
 insert_hash(conf, sh);
 sh->cpu = smp_processor_id();
 set_bit(STRIPE_BATCH_READY, &sh->state);
}
