
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_startstop_t ;
typedef int ide_drive_t ;


 int do_reset1 (int *,int ) ;

ide_startstop_t ide_do_reset(ide_drive_t *drive)
{
 return do_reset1(drive, 0);
}
