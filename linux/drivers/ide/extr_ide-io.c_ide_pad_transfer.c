
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_9__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {int (* input_data ) (TYPE_3__*,int *,int *,int ) ;int (* output_data ) (TYPE_3__*,int *,int *,int ) ;} ;


 int min (int,int) ;
 int stub1 (TYPE_3__*,int *,int *,int ) ;
 int stub2 (TYPE_3__*,int *,int *,int ) ;

void ide_pad_transfer(ide_drive_t *drive, int write, int len)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 buf[4] = { 0 };

 while (len > 0) {
  if (write)
   hwif->tp_ops->output_data(drive, ((void*)0), buf, min(4, len));
  else
   hwif->tp_ops->input_data(drive, ((void*)0), buf, min(4, len));
  len -= 4;
 }
}
