
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; int num_flush_bios; int num_discard_bios; int per_io_data_size; struct delay_c* private; } ;
struct dm_delay_info {int dummy; } ;
struct delay_c {unsigned int argc; int kdelayd_wq; int flush; int write; int read; int may_delay; int timer_lock; int delayed_bios; int flush_expired_bios; int delay_timer; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int) ;
 int delay_class_ctr (struct dm_target*,int *,char**) ;
 int delay_dtr (struct dm_target*) ;
 int flush_expired_bios ;
 int handle_delayed_timer ;
 struct delay_c* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int delay_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct delay_c *dc;
 int ret;

 if (argc != 3 && argc != 6 && argc != 9) {
  ti->error = "Requires exactly 3, 6 or 9 arguments";
  return -EINVAL;
 }

 dc = kzalloc(sizeof(*dc), GFP_KERNEL);
 if (!dc) {
  ti->error = "Cannot allocate context";
  return -ENOMEM;
 }

 ti->private = dc;
 timer_setup(&dc->delay_timer, handle_delayed_timer, 0);
 INIT_WORK(&dc->flush_expired_bios, flush_expired_bios);
 INIT_LIST_HEAD(&dc->delayed_bios);
 mutex_init(&dc->timer_lock);
 atomic_set(&dc->may_delay, 1);
 dc->argc = argc;

 ret = delay_class_ctr(ti, &dc->read, argv);
 if (ret)
  goto bad;

 if (argc == 3) {
  ret = delay_class_ctr(ti, &dc->write, argv);
  if (ret)
   goto bad;
  ret = delay_class_ctr(ti, &dc->flush, argv);
  if (ret)
   goto bad;
  goto out;
 }

 ret = delay_class_ctr(ti, &dc->write, argv + 3);
 if (ret)
  goto bad;
 if (argc == 6) {
  ret = delay_class_ctr(ti, &dc->flush, argv + 3);
  if (ret)
   goto bad;
  goto out;
 }

 ret = delay_class_ctr(ti, &dc->flush, argv + 6);
 if (ret)
  goto bad;

out:
 dc->kdelayd_wq = alloc_workqueue("kdelayd", WQ_MEM_RECLAIM, 0);
 if (!dc->kdelayd_wq) {
  ret = -EINVAL;
  DMERR("Couldn't start kdelayd");
  goto bad;
 }

 ti->num_flush_bios = 1;
 ti->num_discard_bios = 1;
 ti->per_io_data_size = sizeof(struct dm_delay_info);
 return 0;

bad:
 delay_dtr(ti);
 return ret;
}
