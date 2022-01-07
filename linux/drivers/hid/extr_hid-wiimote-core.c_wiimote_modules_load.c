
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {unsigned int devtype; int lock; } ;
struct wiimote_data {TYPE_5__* input; TYPE_4__ state; TYPE_3__* hdev; } ;
struct wiimod_ops {int flags; int (* probe ) (struct wiimod_ops const*,struct wiimote_data*) ;int (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;
typedef size_t __u8 ;
struct TYPE_10__ {int version; int product; int vendor; int bustype; } ;
struct TYPE_9__ {int * parent; } ;
struct TYPE_13__ {int name; TYPE_2__ id; TYPE_1__ dev; } ;
struct TYPE_11__ {int version; int product; int vendor; int bus; int dev; } ;


 int WIIMOD_FLAG_INPUT ;
 size_t const WIIMOD_NULL ;
 int WIIMOTE_NAME ;
 TYPE_5__* input_allocate_device () ;
 int input_free_device (TYPE_5__*) ;
 int input_register_device (TYPE_5__*) ;
 int input_set_drvdata (TYPE_5__*,struct wiimote_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct wiimod_ops const*,struct wiimote_data*) ;
 int stub2 (struct wiimod_ops const*,struct wiimote_data*) ;
 struct wiimod_ops** wiimod_table ;
 size_t** wiimote_devtype_mods ;

__attribute__((used)) static void wiimote_modules_load(struct wiimote_data *wdata,
     unsigned int devtype)
{
 bool need_input = 0;
 const __u8 *mods, *iter;
 const struct wiimod_ops *ops;
 int ret;

 mods = wiimote_devtype_mods[devtype];

 for (iter = mods; *iter != WIIMOD_NULL; ++iter) {
  if (wiimod_table[*iter]->flags & WIIMOD_FLAG_INPUT) {
   need_input = 1;
   break;
  }
 }

 if (need_input) {
  wdata->input = input_allocate_device();
  if (!wdata->input)
   return;

  input_set_drvdata(wdata->input, wdata);
  wdata->input->dev.parent = &wdata->hdev->dev;
  wdata->input->id.bustype = wdata->hdev->bus;
  wdata->input->id.vendor = wdata->hdev->vendor;
  wdata->input->id.product = wdata->hdev->product;
  wdata->input->id.version = wdata->hdev->version;
  wdata->input->name = WIIMOTE_NAME;
 }

 for (iter = mods; *iter != WIIMOD_NULL; ++iter) {
  ops = wiimod_table[*iter];
  if (!ops->probe)
   continue;

  ret = ops->probe(ops, wdata);
  if (ret)
   goto error;
 }

 if (wdata->input) {
  ret = input_register_device(wdata->input);
  if (ret)
   goto error;
 }

 spin_lock_irq(&wdata->state.lock);
 wdata->state.devtype = devtype;
 spin_unlock_irq(&wdata->state.lock);
 return;

error:
 for ( ; iter-- != mods; ) {
  ops = wiimod_table[*iter];
  if (ops->remove)
   ops->remove(ops, wdata);
 }

 if (wdata->input) {
  input_free_device(wdata->input);
  wdata->input = ((void*)0);
 }
}
