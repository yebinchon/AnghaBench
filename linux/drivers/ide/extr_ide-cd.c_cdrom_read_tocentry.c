
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int BLK_MAX_CDB ;
 unsigned char GPCMD_READ_TOC_PMA_ATIP ;
 int IDE_DBG_FUNC ;
 int RQF_QUIET ;
 int ide_cd_queue_pc (int *,unsigned char*,int ,char*,int*,int *,int ,int ) ;
 int ide_debug_log (int ,char*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int cdrom_read_tocentry(ide_drive_t *drive, int trackno, int msf_flag,
    int format, char *buf, int buflen)
{
 unsigned char cmd[BLK_MAX_CDB];

 ide_debug_log(IDE_DBG_FUNC, "enter");

 memset(cmd, 0, BLK_MAX_CDB);

 cmd[0] = GPCMD_READ_TOC_PMA_ATIP;
 cmd[6] = trackno;
 cmd[7] = (buflen >> 8);
 cmd[8] = (buflen & 0xff);
 cmd[9] = (format << 6);

 if (msf_flag)
  cmd[1] = 2;

 return ide_cd_queue_pc(drive, cmd, 0, buf, &buflen, ((void*)0), 0, RQF_QUIET);
}
