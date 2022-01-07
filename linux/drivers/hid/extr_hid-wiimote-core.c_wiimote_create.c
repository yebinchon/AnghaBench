
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd_battery; int drm; int sync; int ready; int lock; } ;
struct TYPE_3__ {int worker; int lock; } ;
struct wiimote_data {int timer; int init_worker; TYPE_2__ state; TYPE_1__ queue; struct hid_device* hdev; } ;
struct hid_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int WIIPROTO_REQ_DRM_K ;
 int hid_set_drvdata (struct hid_device*,struct wiimote_data*) ;
 int init_completion (int *) ;
 struct wiimote_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int wiimote_init_timeout ;
 int wiimote_init_worker ;
 int wiimote_queue_worker ;

__attribute__((used)) static struct wiimote_data *wiimote_create(struct hid_device *hdev)
{
 struct wiimote_data *wdata;

 wdata = kzalloc(sizeof(*wdata), GFP_KERNEL);
 if (!wdata)
  return ((void*)0);

 wdata->hdev = hdev;
 hid_set_drvdata(hdev, wdata);

 spin_lock_init(&wdata->queue.lock);
 INIT_WORK(&wdata->queue.worker, wiimote_queue_worker);

 spin_lock_init(&wdata->state.lock);
 init_completion(&wdata->state.ready);
 mutex_init(&wdata->state.sync);
 wdata->state.drm = WIIPROTO_REQ_DRM_K;
 wdata->state.cmd_battery = 0xff;

 INIT_WORK(&wdata->init_worker, wiimote_init_worker);
 timer_setup(&wdata->timer, wiimote_init_timeout, 0);

 return wdata;
}
