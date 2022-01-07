
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int rate; int ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 int ps2_command (int *,int*,int ) ;

__attribute__((used)) static void psmouse_set_rate(struct psmouse *psmouse, unsigned int rate)
{
 static const u8 rates[] = { 200, 100, 80, 60, 40, 20, 10, 0 };
 u8 r;
 int i = 0;

 while (rates[i] > rate)
  i++;
 r = rates[i];
 ps2_command(&psmouse->ps2dev, &r, PSMOUSE_CMD_SETRATE);
 psmouse->rate = r;
}
