
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int * c; } ;
struct gendisk {int dummy; } ;
typedef int ide_drive_t ;


 int TEST_UNIT_READY ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int ide_queue_pc_tail (int *,struct gendisk*,struct ide_atapi_pc*,int *,int ) ;

int ide_do_test_unit_ready(ide_drive_t *drive, struct gendisk *disk)
{
 struct ide_atapi_pc pc;

 ide_init_pc(&pc);
 pc.c[0] = TEST_UNIT_READY;

 return ide_queue_pc_tail(drive, disk, &pc, ((void*)0), 0);
}
