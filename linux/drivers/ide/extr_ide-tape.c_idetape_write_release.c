
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int blk_size; int user_bs_factor; int * buf; int buffer_size; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_9__ {TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int GFP_KERNEL ;
 int ide_tape_flush_merge_buffer (TYPE_2__*) ;
 int idetape_flush_tape_buffers (TYPE_2__*) ;
 int idetape_pad_zeros (TYPE_2__*,int) ;
 int idetape_write_filemark (TYPE_2__*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static void idetape_write_release(ide_drive_t *drive, unsigned int minor)
{
 idetape_tape_t *tape = drive->driver_data;

 ide_tape_flush_merge_buffer(drive);
 tape->buf = kmalloc(tape->buffer_size, GFP_KERNEL);
 if (tape->buf != ((void*)0)) {
  idetape_pad_zeros(drive, tape->blk_size *
    (tape->user_bs_factor - 1));
  kfree(tape->buf);
  tape->buf = ((void*)0);
 }
 idetape_write_filemark(drive);
 idetape_flush_tape_buffers(drive);
 idetape_flush_tape_buffers(drive);
}
