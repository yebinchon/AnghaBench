
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int force_release_mask; } ;
typedef int ssize_t ;


 int ATKBD_KEYMAP_SIZE ;
 int DECLARE_BITMAP (int ,int ) ;
 int bitmap_parselist (char const*,int ,int ) ;
 int memcpy (int ,int ,int) ;
 int new_mask ;

__attribute__((used)) static ssize_t atkbd_set_force_release(struct atkbd *atkbd,
     const char *buf, size_t count)
{

 DECLARE_BITMAP(new_mask, ATKBD_KEYMAP_SIZE);
 int err;

 err = bitmap_parselist(buf, new_mask, ATKBD_KEYMAP_SIZE);
 if (err)
  return err;

 memcpy(atkbd->force_release_mask, new_mask, sizeof(atkbd->force_release_mask));
 return count;
}
