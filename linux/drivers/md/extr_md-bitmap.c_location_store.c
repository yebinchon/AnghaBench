
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long long offset; scalar_t__ external; long long default_offset; struct file* file; } ;
struct mddev {scalar_t__ major_version; int thread; int sb_flags; int external; TYPE_2__ bitmap_info; struct bitmap* bitmap; TYPE_1__* pers; scalar_t__ sync_thread; scalar_t__ recovery; } ;
struct file {int dummy; } ;
struct bitmap {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int quiesce; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct bitmap*) ;
 int MD_SB_CHANGE_DEVS ;
 int PTR_ERR (struct bitmap*) ;
 int fput (struct file*) ;
 int kstrtoll (char const*,int,long long*) ;
 struct bitmap* md_bitmap_create (struct mddev*,int) ;
 int md_bitmap_destroy (struct mddev*) ;
 int md_bitmap_load (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int mddev_lock (struct mddev*) ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t
location_store(struct mddev *mddev, const char *buf, size_t len)
{
 int rv;

 rv = mddev_lock(mddev);
 if (rv)
  return rv;
 if (mddev->pers) {
  if (!mddev->pers->quiesce) {
   rv = -EBUSY;
   goto out;
  }
  if (mddev->recovery || mddev->sync_thread) {
   rv = -EBUSY;
   goto out;
  }
 }

 if (mddev->bitmap || mddev->bitmap_info.file ||
     mddev->bitmap_info.offset) {

  if (strncmp(buf, "none", 4) != 0) {
   rv = -EBUSY;
   goto out;
  }
  if (mddev->pers) {
   mddev_suspend(mddev);
   md_bitmap_destroy(mddev);
   mddev_resume(mddev);
  }
  mddev->bitmap_info.offset = 0;
  if (mddev->bitmap_info.file) {
   struct file *f = mddev->bitmap_info.file;
   mddev->bitmap_info.file = ((void*)0);
   fput(f);
  }
 } else {

  long long offset;
  if (strncmp(buf, "none", 4) == 0)
                           ;
  else if (strncmp(buf, "file:", 5) == 0) {

   rv = -EINVAL;
   goto out;
  } else {
   if (buf[0] == '+')
    rv = kstrtoll(buf+1, 10, &offset);
   else
    rv = kstrtoll(buf, 10, &offset);
   if (rv)
    goto out;
   if (offset == 0) {
    rv = -EINVAL;
    goto out;
   }
   if (mddev->bitmap_info.external == 0 &&
       mddev->major_version == 0 &&
       offset != mddev->bitmap_info.default_offset) {
    rv = -EINVAL;
    goto out;
   }
   mddev->bitmap_info.offset = offset;
   if (mddev->pers) {
    struct bitmap *bitmap;
    bitmap = md_bitmap_create(mddev, -1);
    mddev_suspend(mddev);
    if (IS_ERR(bitmap))
     rv = PTR_ERR(bitmap);
    else {
     mddev->bitmap = bitmap;
     rv = md_bitmap_load(mddev);
     if (rv)
      mddev->bitmap_info.offset = 0;
    }
    if (rv) {
     md_bitmap_destroy(mddev);
     mddev_resume(mddev);
     goto out;
    }
    mddev_resume(mddev);
   }
  }
 }
 if (!mddev->external) {



  set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
  md_wakeup_thread(mddev->thread);
 }
 rv = 0;
out:
 mddev_unlock(mddev);
 if (rv)
  return rv;
 return len;
}
