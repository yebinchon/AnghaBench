
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; } ;


 int DMF_FREEING ;
 int EBUSY ;
 int _minor_lock ;
 int dm_get (struct mapped_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int dm_hold(struct mapped_device *md)
{
 spin_lock(&_minor_lock);
 if (test_bit(DMF_FREEING, &md->flags)) {
  spin_unlock(&_minor_lock);
  return -EBUSY;
 }
 dm_get(md);
 spin_unlock(&_minor_lock);
 return 0;
}
