
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_ti {scalar_t__ cdti_trk0; scalar_t__ cdti_trk1; } ;
struct TYPE_2__ {unsigned long lba; } ;
struct atapi_toc_entry {TYPE_1__ addr; } ;
typedef int ide_drive_t ;


 int BLK_MAX_CDB ;
 scalar_t__ CDROM_LEADOUT ;
 int EINVAL ;
 unsigned char GPCMD_PLAY_AUDIO_MSF ;
 int ide_cd_get_toc_entry (int *,scalar_t__,struct atapi_toc_entry**) ;
 int ide_cd_queue_pc (int *,unsigned char*,int ,int *,int *,int *,int ,int ) ;
 int lba_to_msf (unsigned long,unsigned char*,unsigned char*,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int ide_cd_fake_play_trkind(ide_drive_t *drive, void *arg)
{
 struct cdrom_ti *ti = arg;
 struct atapi_toc_entry *first_toc, *last_toc;
 unsigned long lba_start, lba_end;
 int stat;
 unsigned char cmd[BLK_MAX_CDB];

 stat = ide_cd_get_toc_entry(drive, ti->cdti_trk0, &first_toc);
 if (stat)
  return stat;

 stat = ide_cd_get_toc_entry(drive, ti->cdti_trk1, &last_toc);
 if (stat)
  return stat;

 if (ti->cdti_trk1 != CDROM_LEADOUT)
  ++last_toc;
 lba_start = first_toc->addr.lba;
 lba_end = last_toc->addr.lba;

 if (lba_end <= lba_start)
  return -EINVAL;

 memset(cmd, 0, BLK_MAX_CDB);

 cmd[0] = GPCMD_PLAY_AUDIO_MSF;
 lba_to_msf(lba_start, &cmd[3], &cmd[4], &cmd[5]);
 lba_to_msf(lba_end - 1, &cmd[6], &cmd[7], &cmd[8]);

 return ide_cd_queue_pc(drive, cmd, 0, ((void*)0), ((void*)0), ((void*)0), 0, 0);
}
