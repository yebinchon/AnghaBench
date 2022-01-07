
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ide_tape_obj {scalar_t__ chrdev_dir; scalar_t__ door_locked; int disk; TYPE_1__* drive; } ;
struct file {struct ide_tape_obj* private_data; } ;
struct TYPE_6__ {int atapi_flags; struct ide_tape_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ DOOR_LOCKED ;
 scalar_t__ DOOR_UNLOCKED ;
 scalar_t__ IDETAPE_DIR_NONE ;
 scalar_t__ IDETAPE_DIR_READ ;
 scalar_t__ IDETAPE_DIR_WRITE ;
 int IDE_AFLAG_BUSY ;
 int IDE_AFLAG_MEDIUM_PRESENT ;
 int IDE_DBG_FUNC ;
 int clear_bit (int ,int *) ;
 int ide_debug_log (int ,char*) ;
 int ide_set_media_lock (TYPE_1__*,int ,int ) ;
 int ide_tape_discard_merge_buffer (TYPE_1__*,int) ;
 int ide_tape_put (struct ide_tape_obj*) ;
 int idetape_chrdev_mutex ;
 int idetape_rewind_tape (TYPE_1__*) ;
 int idetape_write_release (TYPE_1__*,unsigned int) ;
 int ilog2 (int ) ;
 unsigned int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int idetape_chrdev_release(struct inode *inode, struct file *filp)
{
 struct ide_tape_obj *tape = filp->private_data;
 ide_drive_t *drive = tape->drive;
 unsigned int minor = iminor(inode);

 mutex_lock(&idetape_chrdev_mutex);

 tape = drive->driver_data;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 if (tape->chrdev_dir == IDETAPE_DIR_WRITE)
  idetape_write_release(drive, minor);
 if (tape->chrdev_dir == IDETAPE_DIR_READ) {
  if (minor < 128)
   ide_tape_discard_merge_buffer(drive, 1);
 }

 if (minor < 128 && test_bit(ilog2(IDE_AFLAG_MEDIUM_PRESENT),
        &drive->atapi_flags))
  (void) idetape_rewind_tape(drive);

 if (tape->chrdev_dir == IDETAPE_DIR_NONE) {
  if (tape->door_locked == DOOR_LOCKED) {
   if (!ide_set_media_lock(drive, tape->disk, 0))
    tape->door_locked = DOOR_UNLOCKED;
  }
 }
 clear_bit(ilog2(IDE_AFLAG_BUSY), &drive->atapi_flags);
 ide_tape_put(tape);

 mutex_unlock(&idetape_chrdev_mutex);

 return 0;
}
