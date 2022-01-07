
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sectors_dirty_init {int start; int op; int inode; scalar_t__ count; } ;
struct bcache_device {int c; int id; } ;


 int EAGAIN ;
 int INIT_KEYS_SLEEP_MS ;
 int KEY (int ,int ,int ) ;
 int bch_btree_map_keys (int *,int ,int *,int ,int ) ;
 int bch_btree_op_init (int *,int) ;
 int msecs_to_jiffies (int ) ;
 int pr_warn (char*,int) ;
 int schedule_timeout_interruptible (int ) ;
 int sectors_dirty_init_fn ;

void bch_sectors_dirty_init(struct bcache_device *d)
{
 struct sectors_dirty_init op;
 int ret;

 bch_btree_op_init(&op.op, -1);
 op.inode = d->id;
 op.count = 0;
 op.start = KEY(op.inode, 0, 0);

 do {
  ret = bch_btree_map_keys(&op.op, d->c, &op.start,
      sectors_dirty_init_fn, 0);
  if (ret == -EAGAIN)
   schedule_timeout_interruptible(
    msecs_to_jiffies(INIT_KEYS_SLEEP_MS));
  else if (ret < 0) {
   pr_warn("sectors dirty init failed, ret=%d!", ret);
   break;
  }
 } while (ret == -EAGAIN);
}
