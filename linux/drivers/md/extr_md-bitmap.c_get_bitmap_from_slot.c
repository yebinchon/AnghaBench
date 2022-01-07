
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct bitmap {int dummy; } ;


 struct bitmap* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct bitmap*) ;
 int PTR_ERR (struct bitmap*) ;
 struct bitmap* md_bitmap_create (struct mddev*,int) ;
 int md_bitmap_free (struct bitmap*) ;
 int md_bitmap_init_from_disk (struct bitmap*,int ) ;

struct bitmap *get_bitmap_from_slot(struct mddev *mddev, int slot)
{
 int rv = 0;
 struct bitmap *bitmap;

 bitmap = md_bitmap_create(mddev, slot);
 if (IS_ERR(bitmap)) {
  rv = PTR_ERR(bitmap);
  return ERR_PTR(rv);
 }

 rv = md_bitmap_init_from_disk(bitmap, 0);
 if (rv) {
  md_bitmap_free(bitmap);
  return ERR_PTR(rv);
 }

 return bitmap;
}
