
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct cytp_data* private; } ;
struct cytp_data {int mode; } ;


 int CYTP_BIT_ABS_PRESSURE ;
 int CYTP_BIT_ABS_REL_MASK ;
 int CYTP_CMD_ABS_WITH_PRESSURE_MODE ;
 scalar_t__ cypress_send_ext_cmd (struct psmouse*,int ,unsigned char*) ;
 int cypress_set_packet_size (struct psmouse*,int) ;

__attribute__((used)) static int cypress_set_absolute_mode(struct psmouse *psmouse)
{
 struct cytp_data *cytp = psmouse->private;
 unsigned char param[3];

 if (cypress_send_ext_cmd(psmouse, CYTP_CMD_ABS_WITH_PRESSURE_MODE, param) < 0)
  return -1;

 cytp->mode = (cytp->mode & ~CYTP_BIT_ABS_REL_MASK)
   | CYTP_BIT_ABS_PRESSURE;
 cypress_set_packet_size(psmouse, 5);

 return 0;
}
