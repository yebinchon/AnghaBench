
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; } ;


 int ENODEV ;
 int focaltech_pnp_ids ;
 int psmouse_matches_pnp_id (struct psmouse*,int ) ;

int focaltech_detect(struct psmouse *psmouse, bool set_properties)
{
 if (!psmouse_matches_pnp_id(psmouse, focaltech_pnp_ids))
  return -ENODEV;

 if (set_properties) {
  psmouse->vendor = "FocalTech";
  psmouse->name = "Touchpad";
 }

 return 0;
}
