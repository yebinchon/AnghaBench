
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct md_rdev {TYPE_2__* bdev; int kobj; } ;
typedef int sector_t ;
typedef int dev_t ;
struct TYPE_4__ {int bd_inode; } ;
struct TYPE_3__ {int (* load_super ) (struct md_rdev*,int *,int) ;} ;


 int BDEVNAME_SIZE ;
 int BLOCK_SIZE_BITS ;
 int EINVAL ;
 int ENOMEM ;
 struct md_rdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int alloc_disk_sb (struct md_rdev*) ;
 int bdevname (TYPE_2__*,char*) ;
 int i_size_read (int ) ;
 int kfree (struct md_rdev*) ;
 int kobject_init (int *,int *) ;
 struct md_rdev* kzalloc (int,int ) ;
 int lock_rdev (struct md_rdev*,int ,int) ;
 int md_rdev_clear (struct md_rdev*) ;
 int md_rdev_init (struct md_rdev*) ;
 int pr_warn (char*,int ,...) ;
 int rdev_ktype ;
 int stub1 (struct md_rdev*,int *,int) ;
 TYPE_1__* super_types ;
 int unlock_rdev (struct md_rdev*) ;

__attribute__((used)) static struct md_rdev *md_import_device(dev_t newdev, int super_format, int super_minor)
{
 char b[BDEVNAME_SIZE];
 int err;
 struct md_rdev *rdev;
 sector_t size;

 rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
 if (!rdev)
  return ERR_PTR(-ENOMEM);

 err = md_rdev_init(rdev);
 if (err)
  goto abort_free;
 err = alloc_disk_sb(rdev);
 if (err)
  goto abort_free;

 err = lock_rdev(rdev, newdev, super_format == -2);
 if (err)
  goto abort_free;

 kobject_init(&rdev->kobj, &rdev_ktype);

 size = i_size_read(rdev->bdev->bd_inode) >> BLOCK_SIZE_BITS;
 if (!size) {
  pr_warn("md: %s has zero or unknown size, marking faulty!\n",
   bdevname(rdev->bdev,b));
  err = -EINVAL;
  goto abort_free;
 }

 if (super_format >= 0) {
  err = super_types[super_format].
   load_super(rdev, ((void*)0), super_minor);
  if (err == -EINVAL) {
   pr_warn("md: %s does not have a valid v%d.%d superblock, not importing!\n",
    bdevname(rdev->bdev,b),
    super_format, super_minor);
   goto abort_free;
  }
  if (err < 0) {
   pr_warn("md: could not read %s's sb, not importing!\n",
    bdevname(rdev->bdev,b));
   goto abort_free;
  }
 }

 return rdev;

abort_free:
 if (rdev->bdev)
  unlock_rdev(rdev);
 md_rdev_clear(rdev);
 kfree(rdev);
 return ERR_PTR(err);
}
