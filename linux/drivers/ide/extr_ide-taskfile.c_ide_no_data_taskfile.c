
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_cmd {int protocol; } ;
typedef int ide_drive_t ;


 int ATA_PROT_NODATA ;
 int ide_raw_taskfile (int *,struct ide_cmd*,int *,int ) ;

int ide_no_data_taskfile(ide_drive_t *drive, struct ide_cmd *cmd)
{
 cmd->protocol = ATA_PROT_NODATA;

 return ide_raw_taskfile(drive, cmd, ((void*)0), 0);
}
