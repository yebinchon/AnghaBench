
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct vmmouse_data {struct input_dev* abs_dev; } ;
struct psmouse {struct vmmouse_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int s8 ;
typedef int s32 ;
typedef int psmouse_ret_t ;


 int ABSPOINTER_DATA ;
 int ABSPOINTER_STATUS ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int VMMOUSE_CMD (int ,int,int,int,int,int) ;
 int VMMOUSE_ERROR ;
 int VMMOUSE_LEFT_BUTTON ;
 int VMMOUSE_MIDDLE_BUTTON ;
 int VMMOUSE_RELATIVE_PACKET ;
 int VMMOUSE_RIGHT_BUTTON ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int psmouse_err (struct psmouse*,char*) ;
 int vmmouse_report_button (struct psmouse*,struct input_dev*,struct input_dev*,struct input_dev*,int ,int) ;

__attribute__((used)) static psmouse_ret_t vmmouse_report_events(struct psmouse *psmouse)
{
 struct input_dev *rel_dev = psmouse->dev;
 struct vmmouse_data *priv = psmouse->private;
 struct input_dev *abs_dev = priv->abs_dev;
 struct input_dev *pref_dev;
 u32 status, x, y, z;
 u32 dummy1, dummy2, dummy3;
 unsigned int queue_length;
 unsigned int count = 255;

 while (count--) {

  VMMOUSE_CMD(ABSPOINTER_STATUS, 0,
       status, dummy1, dummy2, dummy3);
  if ((status & VMMOUSE_ERROR) == VMMOUSE_ERROR) {
   psmouse_err(psmouse, "failed to fetch status data\n");




   return PSMOUSE_BAD_DATA;
  }

  queue_length = status & 0xffff;
  if (queue_length == 0)
   break;

  if (queue_length % 4) {
   psmouse_err(psmouse, "invalid queue length\n");
   return PSMOUSE_BAD_DATA;
  }


  VMMOUSE_CMD(ABSPOINTER_DATA, 4, status, x, y, z);
  if (status & VMMOUSE_RELATIVE_PACKET) {
   pref_dev = rel_dev;
   input_report_rel(rel_dev, REL_X, (s32)x);
   input_report_rel(rel_dev, REL_Y, -(s32)y);
  } else {
   pref_dev = abs_dev;
   input_report_abs(abs_dev, ABS_X, x);
   input_report_abs(abs_dev, ABS_Y, y);
  }


  input_report_rel(rel_dev, REL_WHEEL, -(s8)((u8) z));

  vmmouse_report_button(psmouse, abs_dev, rel_dev,
          pref_dev, BTN_LEFT,
          status & VMMOUSE_LEFT_BUTTON);
  vmmouse_report_button(psmouse, abs_dev, rel_dev,
          pref_dev, BTN_RIGHT,
          status & VMMOUSE_RIGHT_BUTTON);
  vmmouse_report_button(psmouse, abs_dev, rel_dev,
          pref_dev, BTN_MIDDLE,
          status & VMMOUSE_MIDDLE_BUTTON);
  input_sync(abs_dev);
  input_sync(rel_dev);
 }

 return PSMOUSE_FULL_PACKET;
}
