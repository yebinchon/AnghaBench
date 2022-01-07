
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cd_list_entry {unsigned int cd_flags; int * id_firmware; scalar_t__ id_model; } ;


 size_t ATA_ID_FW_REV ;
 size_t ATA_ID_PROD ;
 struct cd_list_entry* ide_cd_quirks_list ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strstr (char*,int *) ;

__attribute__((used)) static unsigned int ide_cd_flags(u16 *id)
{
 const struct cd_list_entry *cle = ide_cd_quirks_list;

 while (cle->id_model) {
  if (strcmp(cle->id_model, (char *)&id[ATA_ID_PROD]) == 0 &&
      (cle->id_firmware == ((void*)0) ||
       strstr((char *)&id[ATA_ID_FW_REV], cle->id_firmware)))
   return cle->cd_flags;
  cle++;
 }

 return 0;
}
