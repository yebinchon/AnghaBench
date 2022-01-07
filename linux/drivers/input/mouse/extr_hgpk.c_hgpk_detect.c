
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; int model; } ;


 int hgpk_get_model (struct psmouse*) ;

int hgpk_detect(struct psmouse *psmouse, bool set_properties)
{
 int version;

 version = hgpk_get_model(psmouse);
 if (version < 0)
  return version;

 if (set_properties) {
  psmouse->vendor = "ALPS";
  psmouse->name = "HGPK";
  psmouse->model = version;
 }

 return 0;
}
