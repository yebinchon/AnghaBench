
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_PROD ;
 scalar_t__ match_string (char const**,int,char*) ;

__attribute__((used)) static bool check_in_drive_list(ide_drive_t *drive, const char **list)
{
 return match_string(list, -1, (char *)&drive->id[ATA_ID_PROD]) >= 0;
}
