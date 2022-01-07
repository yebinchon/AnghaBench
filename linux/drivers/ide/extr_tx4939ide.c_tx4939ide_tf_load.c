
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_taskfile {int dummy; } ;
typedef int ide_drive_t ;


 int IDE_VALID_DEVICE ;
 int ide_tf_load (int *,struct ide_taskfile*,int) ;
 int tx4939ide_tf_load_fixup (int *) ;

__attribute__((used)) static void tx4939ide_tf_load(ide_drive_t *drive, struct ide_taskfile *tf,
         u8 valid)
{
 ide_tf_load(drive, tf, valid);

 if (valid & IDE_VALID_DEVICE)
  tx4939ide_tf_load_fixup(drive);
}
