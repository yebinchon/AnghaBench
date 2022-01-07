
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int psmouse_ret_t ;


 int PSMOUSE_FULL_PACKET ;

__attribute__((used)) static psmouse_ret_t psmouse_smbus_process_byte(struct psmouse *psmouse)
{
 return PSMOUSE_FULL_PACKET;
}
