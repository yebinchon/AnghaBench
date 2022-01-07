
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psmouse {int dummy; } ;


 int ABSPOINTER_COMMAND ;
 int ABSPOINTER_DATA ;
 int ABSPOINTER_RESTRICT ;
 int ABSPOINTER_STATUS ;
 int ENXIO ;
 int VMMOUSE_CMD (int ,int,int,int,int,int) ;
 int VMMOUSE_CMD_ENABLE ;
 int VMMOUSE_CMD_REQUEST_ABSOLUTE ;
 int VMMOUSE_RESTRICT_CPL0 ;
 int VMMOUSE_VERSION_ID ;
 int psmouse_dbg (struct psmouse*,char*,...) ;
 int vmmouse_disable (struct psmouse*) ;

__attribute__((used)) static int vmmouse_enable(struct psmouse *psmouse)
{
 u32 status, version;
 u32 dummy1, dummy2, dummy3, dummy4;





 VMMOUSE_CMD(ABSPOINTER_COMMAND, VMMOUSE_CMD_ENABLE,
      dummy1, dummy2, dummy3, dummy4);




 VMMOUSE_CMD(ABSPOINTER_STATUS, 0, status, dummy1, dummy2, dummy3);
 if ((status & 0x0000ffff) == 0) {
  psmouse_dbg(psmouse, "empty flags - assuming no device\n");
  return -ENXIO;
 }

 VMMOUSE_CMD(ABSPOINTER_DATA, 1 ,
      version, dummy1, dummy2, dummy3);
 if (version != VMMOUSE_VERSION_ID) {
  psmouse_dbg(psmouse, "Unexpected version value: %u vs %u\n",
       (unsigned) version, VMMOUSE_VERSION_ID);
  vmmouse_disable(psmouse);
  return -ENXIO;
 }




 VMMOUSE_CMD(ABSPOINTER_RESTRICT, VMMOUSE_RESTRICT_CPL0,
      dummy1, dummy2, dummy3, dummy4);

 VMMOUSE_CMD(ABSPOINTER_COMMAND, VMMOUSE_CMD_REQUEST_ABSOLUTE,
      dummy1, dummy2, dummy3, dummy4);

 return 0;
}
