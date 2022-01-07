
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_tcq_priv {unsigned int pen_threshold; unsigned int sample_count; int idev; int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 unsigned int MX25_ADCQ_FIFO_DATA (int ) ;
 unsigned int MX25_ADCQ_FIFO_ID (int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int mx25_tcq_enable_fifo_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_re_enable_touch_detection (struct mx25_tcq_priv*) ;

__attribute__((used)) static void mx25_tcq_create_event_for_4wire(struct mx25_tcq_priv *priv,
         u32 *sample_buf,
         unsigned int samples)
{
 unsigned int x_pos = 0;
 unsigned int y_pos = 0;
 unsigned int touch_pre = 0;
 unsigned int touch_post = 0;
 unsigned int i;

 for (i = 0; i < samples; i++) {
  unsigned int index = MX25_ADCQ_FIFO_ID(sample_buf[i]);
  unsigned int val = MX25_ADCQ_FIFO_DATA(sample_buf[i]);

  switch (index) {
  case 1:
   touch_pre = val;
   break;
  case 2:
   x_pos = val;
   break;
  case 3:
   y_pos = val;
   break;
  case 5:
   touch_post = val;
   break;
  default:
   dev_dbg(priv->dev, "Dropped samples because of invalid index %d\n",
    index);
   return;
  }
 }

 if (samples != 0) {




  if (touch_pre < priv->pen_threshold &&
      touch_post < priv->pen_threshold) {

   x_pos /= priv->sample_count;
   y_pos /= priv->sample_count;
   input_report_abs(priv->idev, ABS_X, x_pos);
   input_report_abs(priv->idev, ABS_Y, y_pos);
   input_report_key(priv->idev, BTN_TOUCH, 1);
   input_sync(priv->idev);


   mx25_tcq_enable_fifo_irq(priv);
  } else if (touch_pre >= priv->pen_threshold &&
      touch_post >= priv->pen_threshold) {




   input_report_key(priv->idev, BTN_TOUCH, 0);
   input_sync(priv->idev);
   mx25_tcq_re_enable_touch_detection(priv);
  } else {






   mx25_tcq_enable_fifo_irq(priv);
  }
 }
}
