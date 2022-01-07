
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bitmap; } ;
typedef int ssize_t ;


 int isspace (char) ;
 int md_bitmap_dirty_bits (int ,unsigned long,unsigned long) ;
 int md_bitmap_unplug (int ) ;
 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 char* skip_spaces (char*) ;

__attribute__((used)) static ssize_t
bitmap_store(struct mddev *mddev, const char *buf, size_t len)
{
 char *end;
 unsigned long chunk, end_chunk;
 int err;

 err = mddev_lock(mddev);
 if (err)
  return err;
 if (!mddev->bitmap)
  goto out;

 while (*buf) {
  chunk = end_chunk = simple_strtoul(buf, &end, 0);
  if (buf == end) break;
  if (*end == '-') {
   buf = end + 1;
   end_chunk = simple_strtoul(buf, &end, 0);
   if (buf == end) break;
  }
  if (*end && !isspace(*end)) break;
  md_bitmap_dirty_bits(mddev->bitmap, chunk, end_chunk);
  buf = skip_spaces(end);
 }
 md_bitmap_unplug(mddev->bitmap);
out:
 mddev_unlock(mddev);
 return len;
}
