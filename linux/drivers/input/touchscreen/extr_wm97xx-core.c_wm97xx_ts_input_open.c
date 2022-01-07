
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm97xx {int ts_reader_min_interval; int ts_reader_interval; scalar_t__ pen_irq; int ts_reader; int * ts_workq; int dev; scalar_t__ pen_is_down; int pen_event_work; TYPE_2__* codec; TYPE_1__* mach_ops; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int (* dig_enable ) (struct wm97xx*,int) ;int (* acc_enable ) (struct wm97xx*,int) ;} ;
struct TYPE_3__ {scalar_t__ acc_enabled; } ;


 int EINVAL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int dev_err (int ,char*) ;
 struct wm97xx* input_get_drvdata (struct input_dev*) ;
 int queue_delayed_work (int *,int *,int) ;
 int stub1 (struct wm97xx*,int) ;
 int stub2 (struct wm97xx*,int) ;
 int wm97xx_init_pen_irq (struct wm97xx*) ;
 int wm97xx_pen_irq_worker ;
 int wm97xx_ts_reader ;

__attribute__((used)) static int wm97xx_ts_input_open(struct input_dev *idev)
{
 struct wm97xx *wm = input_get_drvdata(idev);

 wm->ts_workq = alloc_ordered_workqueue("kwm97xx", 0);
 if (wm->ts_workq == ((void*)0)) {
  dev_err(wm->dev,
   "Failed to create workqueue\n");
  return -EINVAL;
 }


 if (wm->mach_ops && wm->mach_ops->acc_enabled)
  wm->codec->acc_enable(wm, 1);
 wm->codec->dig_enable(wm, 1);

 INIT_DELAYED_WORK(&wm->ts_reader, wm97xx_ts_reader);
 INIT_WORK(&wm->pen_event_work, wm97xx_pen_irq_worker);

 wm->ts_reader_min_interval = HZ >= 100 ? HZ / 100 : 1;
 if (wm->ts_reader_min_interval < 1)
  wm->ts_reader_min_interval = 1;
 wm->ts_reader_interval = wm->ts_reader_min_interval;

 wm->pen_is_down = 0;
 if (wm->pen_irq)
  wm97xx_init_pen_irq(wm);
 else
  dev_err(wm->dev, "No IRQ specified\n");




 if (wm->pen_irq == 0)
  queue_delayed_work(wm->ts_workq, &wm->ts_reader,
       wm->ts_reader_interval);

 return 0;
}
