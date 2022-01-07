
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drive_list_entry {int id_firmware; scalar_t__ id_model; } ;


 size_t ATA_ID_FW_REV ;
 size_t ATA_ID_PROD ;
 int strcmp (scalar_t__,char*) ;
 scalar_t__ strstr (char*,int ) ;

int ide_in_drive_list(u16 *id, const struct drive_list_entry *table)
{
 for ( ; table->id_model; table++)
  if ((!strcmp(table->id_model, (char *)&id[ATA_ID_PROD])) &&
      (!table->id_firmware ||
       strstr((char *)&id[ATA_ID_FW_REV], table->id_firmware)))
   return 1;
 return 0;
}
