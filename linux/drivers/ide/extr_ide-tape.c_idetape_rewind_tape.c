
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ide_tape_obj {struct gendisk* disk; } ;
struct ide_atapi_pc {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {struct ide_tape_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DBG_FUNC ;
 int ide_debug_log (int ,char*) ;
 int ide_queue_pc_tail (TYPE_1__*,struct gendisk*,struct ide_atapi_pc*,int *,int ) ;
 int ide_tape_read_position (TYPE_1__*) ;
 int idetape_create_rewind_cmd (TYPE_1__*,struct ide_atapi_pc*) ;

__attribute__((used)) static int idetape_rewind_tape(ide_drive_t *drive)
{
 struct ide_tape_obj *tape = drive->driver_data;
 struct gendisk *disk = tape->disk;
 struct ide_atapi_pc pc;
 int ret;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 idetape_create_rewind_cmd(drive, &pc);
 ret = ide_queue_pc_tail(drive, disk, &pc, ((void*)0), 0);
 if (ret)
  return ret;

 ret = ide_tape_read_position(drive);
 if (ret < 0)
  return ret;
 return 0;
}
