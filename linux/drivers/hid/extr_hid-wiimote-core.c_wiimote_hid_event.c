
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wiiproto_handler {int size; scalar_t__ id; int (* func ) (struct wiimote_data*,scalar_t__*) ;} ;
struct TYPE_2__ {int lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 int EINVAL ;
 struct wiiproto_handler* handlers ;
 struct wiimote_data* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct wiimote_data*,scalar_t__*) ;

__attribute__((used)) static int wiimote_hid_event(struct hid_device *hdev, struct hid_report *report,
       u8 *raw_data, int size)
{
 struct wiimote_data *wdata = hid_get_drvdata(hdev);
 struct wiiproto_handler *h;
 int i;
 unsigned long flags;

 if (size < 1)
  return -EINVAL;

 spin_lock_irqsave(&wdata->state.lock, flags);

 for (i = 0; handlers[i].id; ++i) {
  h = &handlers[i];
  if (h->id == raw_data[0] && h->size < size) {
   h->func(wdata, &raw_data[1]);
   break;
  }
 }

 if (!handlers[i].id)
  hid_warn(hdev, "Unhandled report %hhu size %d\n", raw_data[0],
         size);

 spin_unlock_irqrestore(&wdata->state.lock, flags);

 return 0;
}
