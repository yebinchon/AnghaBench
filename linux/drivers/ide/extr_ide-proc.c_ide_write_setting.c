
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_proc_devset {int min; int max; struct ide_devset* setting; } ;
struct ide_devset {int flags; int set; } ;
typedef int ide_drive_t ;


 int CAP_SYS_ADMIN ;
 int DS_SYNC ;
 int EACCES ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int ide_devset_execute (int *,struct ide_devset const*,int) ;

__attribute__((used)) static int ide_write_setting(ide_drive_t *drive,
        const struct ide_proc_devset *setting, int val)
{
 const struct ide_devset *ds = setting->setting;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;
 if (!ds->set)
  return -EPERM;
 if ((ds->flags & DS_SYNC)
     && (val < setting->min || val > setting->max))
  return -EINVAL;
 return ide_devset_execute(drive, ds, val);
}
