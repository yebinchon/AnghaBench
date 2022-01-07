
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int * firmware_id; } ;
struct TYPE_2__ {struct serio* serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (int *,int,int ) ;
 scalar_t__ psmouse_check_pnp_id (char*,char const* const*) ;
 scalar_t__ strncmp (int *,char*,int) ;
 char* strsep (char**,char*) ;

bool psmouse_matches_pnp_id(struct psmouse *psmouse, const char * const ids[])
{
 struct serio *serio = psmouse->ps2dev.serio;
 char *p, *fw_id_copy, *save_ptr;
 bool found = 0;

 if (strncmp(serio->firmware_id, "PNP: ", 5))
  return 0;

 fw_id_copy = kstrndup(&serio->firmware_id[5],
         sizeof(serio->firmware_id) - 5,
         GFP_KERNEL);
 if (!fw_id_copy)
  return 0;

 save_ptr = fw_id_copy;
 while ((p = strsep(&fw_id_copy, " ")) != ((void*)0)) {
  if (psmouse_check_pnp_id(p, ids)) {
   found = 1;
   break;
  }
 }

 kfree(save_ptr);
 return found;
}
