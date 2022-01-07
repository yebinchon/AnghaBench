
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; struct hgpk_data* private; } ;
struct input_dev {int dummy; } ;
struct hgpk_data {scalar_t__ mode; int abs_x; int abs_y; scalar_t__ dupe_count; int recalib_wq; int spew_flag; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOUCH ;
 scalar_t__ HGPK_MODE_GLIDESENSOR ;
 scalar_t__ HGPK_MODE_PENTABLET ;
 int RECALIBRATING ;
 scalar_t__ SPEW_WATCH_COUNT ;
 scalar_t__ hgpk_discard_decay_hack (struct psmouse*,int,int) ;
 int hgpk_reset_hack_state (struct psmouse*) ;
 int hgpk_spewing_hack (struct psmouse*,int,int,int,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int msecs_to_jiffies (int ) ;
 int psmouse_dbg (struct psmouse*,char*,...) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int spew_delay ;
 scalar_t__ tpdebug ;

__attribute__((used)) static void hgpk_process_advanced_packet(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;
 struct input_dev *idev = psmouse->dev;
 unsigned char *packet = psmouse->packet;
 int down = !!(packet[2] & 2);
 int left = !!(packet[3] & 1);
 int right = !!(packet[3] & 2);
 int x = packet[1] | ((packet[2] & 0x78) << 4);
 int y = packet[4] | ((packet[3] & 0x70) << 3);

 if (priv->mode == HGPK_MODE_GLIDESENSOR) {
  int pt_down = !!(packet[2] & 1);
  int finger_down = !!(packet[2] & 2);
  int z = packet[5];

  input_report_abs(idev, ABS_PRESSURE, z);
  if (tpdebug)
   psmouse_dbg(psmouse, "pd=%d fd=%d z=%d",
        pt_down, finger_down, z);
 } else {




  if (tpdebug)
   psmouse_dbg(psmouse, "pd=%d ", down);
 }

 if (tpdebug)
  psmouse_dbg(psmouse, "l=%d r=%d x=%d y=%d\n",
       left, right, x, y);

 input_report_key(idev, BTN_TOUCH, down);
 input_report_key(idev, BTN_LEFT, left);
 input_report_key(idev, BTN_RIGHT, right);





 if (!down) {
  hgpk_reset_hack_state(psmouse);
  goto done;
 }





 if (x == priv->abs_x && y == priv->abs_y) {
  if (++priv->dupe_count > SPEW_WATCH_COUNT) {
   if (tpdebug)
    psmouse_dbg(psmouse, "hard spew detected\n");
   priv->spew_flag = RECALIBRATING;
   psmouse_queue_work(psmouse, &priv->recalib_wq,
        msecs_to_jiffies(spew_delay));
  }
  goto done;
 }


 priv->dupe_count = 0;


 if (priv->mode != HGPK_MODE_PENTABLET && priv->abs_x != -1) {
  int x_diff = priv->abs_x - x;
  int y_diff = priv->abs_y - y;
  if (hgpk_discard_decay_hack(psmouse, x_diff, y_diff)) {
   if (tpdebug)
    psmouse_dbg(psmouse, "discarding\n");
   goto done;
  }
  hgpk_spewing_hack(psmouse, left, right, x_diff, y_diff);
 }

 input_report_abs(idev, ABS_X, x);
 input_report_abs(idev, ABS_Y, y);
 priv->abs_x = x;
 priv->abs_y = y;

done:
 input_sync(idev);
}
