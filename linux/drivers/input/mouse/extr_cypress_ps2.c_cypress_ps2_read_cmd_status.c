
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int wait; } ;
struct psmouse {int state; int pktcnt; int packet; struct ps2dev ps2dev; } ;
typedef enum psmouse_state { ____Placeholder_psmouse_state } psmouse_state ;


 unsigned char CYTP_CMD_READ_TP_METRICS ;
 int CYTP_CMD_TIMEOUT ;
 int PSMOUSE_CMD_MODE ;
 int cypress_ps2_sendbyte (struct psmouse*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int ps2_begin_command (struct ps2dev*) ;
 int ps2_end_command (struct ps2dev*) ;
 int psmouse_dbg (struct psmouse*,char*,unsigned char,int,unsigned char*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int cypress_ps2_read_cmd_status(struct psmouse *psmouse,
           unsigned char cmd,
           unsigned char *param)
{
 int rc;
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 enum psmouse_state old_state;
 int pktsize;

 ps2_begin_command(ps2dev);

 old_state = psmouse->state;
 psmouse->state = PSMOUSE_CMD_MODE;
 psmouse->pktcnt = 0;

 pktsize = (cmd == CYTP_CMD_READ_TP_METRICS) ? 8 : 3;
 memset(param, 0, pktsize);

 rc = cypress_ps2_sendbyte(psmouse, 0xe9);
 if (rc < 0)
  goto out;

 wait_event_timeout(ps2dev->wait,
   (psmouse->pktcnt >= pktsize),
   msecs_to_jiffies(CYTP_CMD_TIMEOUT));

 memcpy(param, psmouse->packet, pktsize);

 psmouse_dbg(psmouse, "Command 0x%02x response data (0x): %*ph\n",
   cmd, pktsize, param);

out:
 psmouse->state = old_state;
 psmouse->pktcnt = 0;

 ps2_end_command(ps2dev);

 return rc;
}
