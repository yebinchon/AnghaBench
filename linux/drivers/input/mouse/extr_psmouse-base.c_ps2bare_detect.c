
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; int dev; } ;


 int BTN_MIDDLE ;
 int EV_KEY ;
 int input_set_capability (int ,int ,int ) ;

__attribute__((used)) static int ps2bare_detect(struct psmouse *psmouse, bool set_properties)
{
 if (set_properties) {
  if (!psmouse->vendor)
   psmouse->vendor = "Generic";
  if (!psmouse->name)
   psmouse->name = "Mouse";





  input_set_capability(psmouse->dev, EV_KEY, BTN_MIDDLE);
 }

 return 0;
}
