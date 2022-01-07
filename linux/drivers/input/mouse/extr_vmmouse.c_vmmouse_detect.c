
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psmouse {int model; int name; int vendor; } ;


 int ENXIO ;
 int GETVERSION ;
 int VMMOUSE_CMD (int ,int ,int,int,int,int) ;
 int VMMOUSE_NAME ;
 int VMMOUSE_PROTO_MAGIC ;
 int VMMOUSE_VENDOR ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int vmmouse_check_hypervisor () ;

int vmmouse_detect(struct psmouse *psmouse, bool set_properties)
{
 u32 response, version, dummy1, dummy2;

 if (!vmmouse_check_hypervisor()) {
  psmouse_dbg(psmouse,
       "VMMouse not running on supported hypervisor.\n");
  return -ENXIO;
 }


 response = ~VMMOUSE_PROTO_MAGIC;
 VMMOUSE_CMD(GETVERSION, 0, version, response, dummy1, dummy2);
 if (response != VMMOUSE_PROTO_MAGIC || version == 0xffffffffU)
  return -ENXIO;

 if (set_properties) {
  psmouse->vendor = VMMOUSE_VENDOR;
  psmouse->name = VMMOUSE_NAME;
  psmouse->model = version;
 }

 return 0;
}
