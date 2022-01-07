
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; } ;


 int CYTP_CMD_READ_CYPRESS_ID ;
 int ENODEV ;
 scalar_t__ cypress_send_ext_cmd (struct psmouse*,int ,unsigned char*) ;

int cypress_detect(struct psmouse *psmouse, bool set_properties)
{
 unsigned char param[3];

 if (cypress_send_ext_cmd(psmouse, CYTP_CMD_READ_CYPRESS_ID, param))
  return -ENODEV;


 if (param[0] != 0x33 || param[1] != 0xCC)
  return -ENODEV;

 if (set_properties) {
  psmouse->vendor = "Cypress";
  psmouse->name = "Trackpad";
 }

 return 0;
}
