
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int rate; int ps2dev; struct cytp_data* private; } ;
struct cytp_data {int mode; } ;


 int CYTP_BIT_HIGH_RATE ;
 int PSMOUSE_CMD_SETRATE ;
 int ps2_command (int *,unsigned char*,int ) ;

__attribute__((used)) static void cypress_set_rate(struct psmouse *psmouse, unsigned int rate)
{
 struct cytp_data *cytp = psmouse->private;

 if (rate >= 80) {
  psmouse->rate = 80;
  cytp->mode |= CYTP_BIT_HIGH_RATE;
 } else {
  psmouse->rate = 40;
  cytp->mode &= ~CYTP_BIT_HIGH_RATE;
 }

 ps2_command(&psmouse->ps2dev, (unsigned char *)&psmouse->rate,
      PSMOUSE_CMD_SETRATE);
}
