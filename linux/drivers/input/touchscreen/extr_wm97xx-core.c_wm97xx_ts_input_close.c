
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {scalar_t__ id; TYPE_2__* codec; TYPE_1__* mach_ops; int ts_workq; int ts_reader; int pen_event_work; scalar_t__ pen_is_down; scalar_t__ pen_irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int (* acc_enable ) (struct wm97xx*,int ) ;int (* dig_enable ) (struct wm97xx*,int ) ;} ;
struct TYPE_3__ {int irq_gpio; scalar_t__ acc_enabled; int (* irq_enable ) (struct wm97xx*,int) ;} ;


 int AC97_MISC_AFE ;
 int BUG_ON (int) ;
 scalar_t__ WM9705_ID2 ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int free_irq (scalar_t__,struct wm97xx*) ;
 struct wm97xx* input_get_drvdata (struct input_dev*) ;
 int stub1 (struct wm97xx*,int) ;
 int stub2 (struct wm97xx*,int ) ;
 int stub3 (struct wm97xx*,int ) ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static void wm97xx_ts_input_close(struct input_dev *idev)
{
 struct wm97xx *wm = input_get_drvdata(idev);
 u16 reg;

 if (wm->pen_irq) {

  if (wm->id != WM9705_ID2) {
   BUG_ON(!wm->mach_ops->irq_gpio);
   reg = wm97xx_reg_read(wm, AC97_MISC_AFE);
   wm97xx_reg_write(wm, AC97_MISC_AFE,
      reg | wm->mach_ops->irq_gpio);
  }

  free_irq(wm->pen_irq, wm);
 }

 wm->pen_is_down = 0;


 if (cancel_work_sync(&wm->pen_event_work))
  wm->mach_ops->irq_enable(wm, 1);




 cancel_delayed_work_sync(&wm->ts_reader);

 destroy_workqueue(wm->ts_workq);


 wm->codec->dig_enable(wm, 0);
 if (wm->mach_ops && wm->mach_ops->acc_enabled)
  wm->codec->acc_enable(wm, 0);
}
