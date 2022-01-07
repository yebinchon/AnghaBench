
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ file; } ;
struct bitmap {TYPE_1__ storage; int flags; } ;


 int BITMAP_STALE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 int bmname (struct bitmap*) ;
 char* file_path (scalar_t__,char*,int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int md_bitmap_update_sb (struct bitmap*) ;
 int pr_warn (char*,int ,...) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void md_bitmap_file_kick(struct bitmap *bitmap)
{
 char *path, *ptr = ((void*)0);

 if (!test_and_set_bit(BITMAP_STALE, &bitmap->flags)) {
  md_bitmap_update_sb(bitmap);

  if (bitmap->storage.file) {
   path = kmalloc(PAGE_SIZE, GFP_KERNEL);
   if (path)
    ptr = file_path(bitmap->storage.file,
          path, PAGE_SIZE);

   pr_warn("%s: kicking failed bitmap file %s from array!\n",
    bmname(bitmap), IS_ERR(ptr) ? "" : ptr);

   kfree(path);
  } else
   pr_warn("%s: disabling internal bitmap due to errors\n",
    bmname(bitmap));
 }
}
