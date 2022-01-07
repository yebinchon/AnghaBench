
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783_ts_priv {int* sample; int work; struct input_dev* idev; } ;
struct input_dev {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int HZ ;
 int dev_dbg (int *,char*,...) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int sample_tolerance ;
 int schedule_delayed_work (int *,int) ;
 int sort3 (int,int,int) ;

__attribute__((used)) static void mc13783_ts_report_sample(struct mc13783_ts_priv *priv)
{
 struct input_dev *idev = priv->idev;
 int x0, x1, x2, y0, y1, y2;
 int cr0, cr1;





 x0 = priv->sample[0] & 0xfff;
 x1 = priv->sample[1] & 0xfff;
 x2 = priv->sample[2] & 0xfff;
 y0 = priv->sample[3] & 0xfff;
 y1 = (priv->sample[0] >> 12) & 0xfff;
 y2 = (priv->sample[1] >> 12) & 0xfff;
 cr0 = (priv->sample[2] >> 12) & 0xfff;
 cr1 = (priv->sample[3] >> 12) & 0xfff;

 dev_dbg(&idev->dev,
  "x: (% 4d,% 4d,% 4d) y: (% 4d, % 4d,% 4d) cr: (% 4d, % 4d)\n",
  x0, x1, x2, y0, y1, y2, cr0, cr1);

 sort3(x0, x1, x2);
 sort3(y0, y1, y2);

 cr0 = (cr0 + cr1) / 2;

 if (!cr0 || !sample_tolerance ||
   (x2 - x0 < sample_tolerance &&
    y2 - y0 < sample_tolerance)) {

  if (cr0) {
   input_report_abs(idev, ABS_X, x1);
   input_report_abs(idev, ABS_Y, y1);

   dev_dbg(&idev->dev, "report (%d, %d, %d)\n",
     x1, y1, 0x1000 - cr0);
   schedule_delayed_work(&priv->work, HZ / 50);
  } else {
   dev_dbg(&idev->dev, "report release\n");
  }

  input_report_abs(idev, ABS_PRESSURE,
    cr0 ? 0x1000 - cr0 : cr0);
  input_report_key(idev, BTN_TOUCH, cr0);
  input_sync(idev);
 } else {
  dev_dbg(&idev->dev, "discard event\n");
 }
}
