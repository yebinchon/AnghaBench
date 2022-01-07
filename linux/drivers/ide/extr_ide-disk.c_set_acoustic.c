
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acoustic; } ;
typedef TYPE_1__ ide_drive_t ;


 int EINVAL ;
 int SETFEATURES_AAM_OFF ;
 int SETFEATURES_AAM_ON ;
 int ide_do_setfeature (TYPE_1__*,int ,int) ;

__attribute__((used)) static int set_acoustic(ide_drive_t *drive, int arg)
{
 if (arg < 0 || arg > 254)
  return -EINVAL;

 ide_do_setfeature(drive,
  arg ? SETFEATURES_AAM_ON : SETFEATURES_AAM_OFF, arg);

 drive->acoustic = arg;

 return 0;
}
