
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int ide_drive_t ;


 scalar_t__ ide_get_drivedata (int *) ;

__attribute__((used)) static inline u8 QD_TIMREG(ide_drive_t *drive)
{
 return ((unsigned long)ide_get_drivedata(drive) & 0xff00) >> 8;
}
