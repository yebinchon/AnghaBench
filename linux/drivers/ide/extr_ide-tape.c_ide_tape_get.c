
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_tape_obj {int dev; int drive; } ;
struct gendisk {int dummy; } ;


 int get_device (int *) ;
 scalar_t__ ide_device_get (int ) ;
 struct ide_tape_obj* ide_drv_g (struct gendisk*,int ) ;
 int ide_tape_obj ;
 struct ide_tape_obj** idetape_devs ;
 int idetape_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ide_tape_obj *ide_tape_get(struct gendisk *disk, bool cdev,
      unsigned int i)
{
 struct ide_tape_obj *tape = ((void*)0);

 mutex_lock(&idetape_ref_mutex);

 if (cdev)
  tape = idetape_devs[i];
 else
  tape = ide_drv_g(disk, ide_tape_obj);

 if (tape) {
  if (ide_device_get(tape->drive))
   tape = ((void*)0);
  else
   get_device(&tape->dev);
 }

 mutex_unlock(&idetape_ref_mutex);
 return tape;
}
