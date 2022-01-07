
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;
struct alps_fields {int fingers; int ts_middle; int ts_right; int ts_left; int pressure; TYPE_1__ st; scalar_t__ first_mp; scalar_t__ is_mp; } ;
struct alps_data {int multi_packet; unsigned char* multi_data; int flags; int quirks; int (* decode_fields ) (struct alps_fields*,unsigned char*,struct psmouse*) ;struct alps_fields f; struct input_dev* dev2; } ;


 int ALPS_DUALPOINT ;
 int ALPS_QUIRK_TRACKSTICK_BUTTONS ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 scalar_t__ alps_process_bitmap (struct alps_data*,struct alps_fields*) ;
 int alps_report_semi_mt_data (struct psmouse*,int) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (struct alps_fields*,int ,int) ;
 int stub1 (struct alps_fields*,unsigned char*,struct psmouse*) ;
 int stub2 (struct alps_fields*,unsigned char*,struct psmouse*) ;

__attribute__((used)) static void alps_process_touchpad_packet_v3_v5(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev2 = priv->dev2;
 struct alps_fields *f = &priv->f;
 int fingers = 0;

 memset(f, 0, sizeof(*f));

 priv->decode_fields(f, packet, psmouse);







 if (priv->multi_packet) {






  if (f->is_mp) {
   fingers = f->fingers;




   priv->decode_fields(f, priv->multi_data, psmouse);
   if (alps_process_bitmap(priv, f) == 0)
    fingers = 0;
  } else {
   priv->multi_packet = 0;
  }
 }
 if (f->is_mp)
  return;

 if (!priv->multi_packet && f->first_mp) {
  priv->multi_packet = 1;
  memcpy(priv->multi_data, packet, sizeof(priv->multi_data));
  return;
 }

 priv->multi_packet = 0;







 if (f->st.x && f->st.y && !f->pressure)
  return;

 alps_report_semi_mt_data(psmouse, fingers);

 if ((priv->flags & ALPS_DUALPOINT) &&
     !(priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS)) {
  input_report_key(dev2, BTN_LEFT, f->ts_left);
  input_report_key(dev2, BTN_RIGHT, f->ts_right);
  input_report_key(dev2, BTN_MIDDLE, f->ts_middle);
  input_sync(dev2);
 }
}
