
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r10conf {int copies; TYPE_1__* mirrors; int prev; } ;
struct r10bio {int sectors; TYPE_2__* devs; int sector; } ;
struct page {int dummy; } ;
struct mddev {int recovery; struct r10conf* private; } ;
struct md_rdev {int nr_pending; int flags; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {struct page** pages; } ;
struct TYPE_5__ {int devnum; scalar_t__ addr; int bio; } ;
struct TYPE_4__ {int rdev; } ;


 int EIO ;
 int ENOMEM ;
 int Faulty ;
 int GFP_NOIO ;
 int In_sync ;
 int MD_RECOVERY_INTR ;
 int PAGE_SIZE ;
 int REQ_OP_READ ;
 int __raid10_find_phys (int *,struct r10bio*) ;
 int atomic_inc (int *) ;
 int devs ;
 TYPE_3__* get_resync_pages (int ) ;
 int kfree (struct r10bio*) ;
 struct r10bio* kmalloc (int ,int ) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int set_bit (int ,int *) ;
 int struct_size (struct r10bio*,int ,int) ;
 int sync_page_io (struct md_rdev*,scalar_t__,int,struct page*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int handle_reshape_read_error(struct mddev *mddev,
         struct r10bio *r10_bio)
{

 int sectors = r10_bio->sectors;
 struct r10conf *conf = mddev->private;
 struct r10bio *r10b;
 int slot = 0;
 int idx = 0;
 struct page **pages;

 r10b = kmalloc(struct_size(r10b, devs, conf->copies), GFP_NOIO);
 if (!r10b) {
  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
  return -ENOMEM;
 }


 pages = get_resync_pages(r10_bio->devs[0].bio)->pages;

 r10b->sector = r10_bio->sector;
 __raid10_find_phys(&conf->prev, r10b);

 while (sectors) {
  int s = sectors;
  int success = 0;
  int first_slot = slot;

  if (s > (PAGE_SIZE >> 9))
   s = PAGE_SIZE >> 9;

  rcu_read_lock();
  while (!success) {
   int d = r10b->devs[slot].devnum;
   struct md_rdev *rdev = rcu_dereference(conf->mirrors[d].rdev);
   sector_t addr;
   if (rdev == ((void*)0) ||
       test_bit(Faulty, &rdev->flags) ||
       !test_bit(In_sync, &rdev->flags))
    goto failed;

   addr = r10b->devs[slot].addr + idx * PAGE_SIZE;
   atomic_inc(&rdev->nr_pending);
   rcu_read_unlock();
   success = sync_page_io(rdev,
            addr,
            s << 9,
            pages[idx],
            REQ_OP_READ, 0, 0);
   rdev_dec_pending(rdev, mddev);
   rcu_read_lock();
   if (success)
    break;
  failed:
   slot++;
   if (slot >= conf->copies)
    slot = 0;
   if (slot == first_slot)
    break;
  }
  rcu_read_unlock();
  if (!success) {

   set_bit(MD_RECOVERY_INTR,
    &mddev->recovery);
   kfree(r10b);
   return -EIO;
  }
  sectors -= s;
  idx++;
 }
 kfree(r10b);
 return 0;
}
