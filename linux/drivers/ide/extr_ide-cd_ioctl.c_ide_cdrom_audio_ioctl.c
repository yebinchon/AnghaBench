
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;





 int EINVAL ;
 int ide_cd_fake_play_trkind (int *,void*) ;
 int ide_cd_read_tocentry (int *,void*) ;
 int ide_cd_read_tochdr (int *,void*) ;

int ide_cdrom_audio_ioctl(struct cdrom_device_info *cdi,
     unsigned int cmd, void *arg)
{
 ide_drive_t *drive = cdi->handle;

 switch (cmd) {




 case 130:
  return ide_cd_fake_play_trkind(drive, arg);
 case 128:
  return ide_cd_read_tochdr(drive, arg);
 case 129:
  return ide_cd_read_tocentry(drive, arg);
 default:
  return -EINVAL;
 }
}
