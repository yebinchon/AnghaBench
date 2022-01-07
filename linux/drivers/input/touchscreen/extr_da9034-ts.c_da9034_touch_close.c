
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct da9034_touch {int da9034_dev; int state; int tsi_work; int notifier; } ;


 int DA9034_EVENT_PEN_DOWN ;
 int DA9034_EVENT_TSI_READY ;
 int DA9034_LDO_ADC_EN ;
 int DA9034_MANUAL_CTRL ;
 int STATE_IDLE ;
 int cancel_delayed_work_sync (int *) ;
 int da903x_clr_bits (int ,int ,int ) ;
 int da903x_unregister_notifier (int ,int *,int) ;
 int detect_pen_down (struct da9034_touch*,int ) ;
 struct da9034_touch* input_get_drvdata (struct input_dev*) ;
 int stop_tsi (struct da9034_touch*) ;

__attribute__((used)) static void da9034_touch_close(struct input_dev *dev)
{
 struct da9034_touch *touch = input_get_drvdata(dev);

 da903x_unregister_notifier(touch->da9034_dev, &touch->notifier,
   DA9034_EVENT_PEN_DOWN | DA9034_EVENT_TSI_READY);

 cancel_delayed_work_sync(&touch->tsi_work);

 touch->state = STATE_IDLE;
 stop_tsi(touch);
 detect_pen_down(touch, 0);


 da903x_clr_bits(touch->da9034_dev,
   DA9034_MANUAL_CTRL, DA9034_LDO_ADC_EN);
}
