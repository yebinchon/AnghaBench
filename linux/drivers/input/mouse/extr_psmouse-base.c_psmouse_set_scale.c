
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;
typedef enum psmouse_scale { ____Placeholder_psmouse_scale } psmouse_scale ;


 int PSMOUSE_CMD_SETSCALE11 ;
 int PSMOUSE_CMD_SETSCALE21 ;
 int PSMOUSE_SCALE21 ;
 int ps2_command (int *,int *,int ) ;

__attribute__((used)) static void psmouse_set_scale(struct psmouse *psmouse, enum psmouse_scale scale)
{
 ps2_command(&psmouse->ps2dev, ((void*)0),
      scale == PSMOUSE_SCALE21 ? PSMOUSE_CMD_SETSCALE21 :
            PSMOUSE_CMD_SETSCALE11);
}
