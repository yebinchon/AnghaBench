
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_port_info {int host_flags; } ;


 int ENOENT ;
 int IDE_HFLAG_NON_BOOTABLE ;
 int IDE_HFLAG_QD_2ND_PORT ;
 int MAX_HWIFS ;
 int ffz (int) ;
 int ide_cfg_mtx ;
 int ide_indexes ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ide_find_port_slot(const struct ide_port_info *d)
{
 int idx = -ENOENT;
 u8 bootable = (d && (d->host_flags & IDE_HFLAG_NON_BOOTABLE)) ? 0 : 1;
 u8 i = (d && (d->host_flags & IDE_HFLAG_QD_2ND_PORT)) ? 1 : 0;
 mutex_lock(&ide_cfg_mtx);
 if (bootable) {
  if ((ide_indexes | i) != (1 << MAX_HWIFS) - 1)
   idx = ffz(ide_indexes | i);
 } else {
  if ((ide_indexes | 3) != (1 << MAX_HWIFS) - 1)
   idx = ffz(ide_indexes | 3);
  else if ((ide_indexes & 3) != 3)
   idx = ffz(ide_indexes);
 }
 if (idx >= 0)
  ide_indexes |= (1 << idx);
 mutex_unlock(&ide_cfg_mtx);

 return idx;
}
