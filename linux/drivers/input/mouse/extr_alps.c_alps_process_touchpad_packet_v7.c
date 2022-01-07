
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {int middle; int right; int left; int fingers; int mt; } ;
struct alps_data {scalar_t__ (* decode_fields ) (struct alps_fields*,int ,struct psmouse*) ;struct alps_fields f; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int alps_get_mt_count (int ) ;
 int alps_report_mt_data (struct psmouse*,int ) ;
 int input_mt_report_finger_count (struct input_dev*,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int memset (struct alps_fields*,int ,int) ;
 scalar_t__ stub1 (struct alps_fields*,int ,struct psmouse*) ;

__attribute__((used)) static void alps_process_touchpad_packet_v7(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev = psmouse->dev;
 struct alps_fields *f = &priv->f;

 memset(f, 0, sizeof(*f));

 if (priv->decode_fields(f, psmouse->packet, psmouse))
  return;

 alps_report_mt_data(psmouse, alps_get_mt_count(f->mt));

 input_mt_report_finger_count(dev, f->fingers);

 input_report_key(dev, BTN_LEFT, f->left);
 input_report_key(dev, BTN_RIGHT, f->right);
 input_report_key(dev, BTN_MIDDLE, f->middle);

 input_sync(dev);
}
