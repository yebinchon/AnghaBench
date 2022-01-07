
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct dj_workitem {int dummy; } ;
struct dj_receiver_dev {int type; struct hid_device* hidpp; struct hid_device* mouse; struct hid_device* keyboard; int last_query; int list; int kref; int notif_fifo; int lock; int work; } ;
typedef enum recvr_type { ____Placeholder_recvr_type } recvr_type ;


 int DJ_MAX_NUMBER_NOTIFS ;
 int GFP_KERNEL ;
 unsigned int HID_GD_KEYBOARD ;
 unsigned int HID_GD_MOUSE ;
 int INIT_WORK (int *,int ) ;
 int delayedwork_callback ;
 struct dj_receiver_dev* dj_find_receiver_dev (struct hid_device*,int) ;
 int dj_hdev_list ;
 int dj_hdev_list_lock ;
 int hid_set_drvdata (struct hid_device*,struct dj_receiver_dev*) ;
 int jiffies ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int kfree (struct dj_receiver_dev*) ;
 int kref_init (int *) ;
 struct dj_receiver_dev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dj_receiver_dev *dj_get_receiver_dev(struct hid_device *hdev,
         enum recvr_type type,
         unsigned int application,
         bool is_hidpp)
{
 struct dj_receiver_dev *djrcv_dev;

 mutex_lock(&dj_hdev_list_lock);

 djrcv_dev = dj_find_receiver_dev(hdev, type);
 if (!djrcv_dev) {
  djrcv_dev = kzalloc(sizeof(*djrcv_dev), GFP_KERNEL);
  if (!djrcv_dev)
   goto out;

  INIT_WORK(&djrcv_dev->work, delayedwork_callback);
  spin_lock_init(&djrcv_dev->lock);
  if (kfifo_alloc(&djrcv_dev->notif_fifo,
       DJ_MAX_NUMBER_NOTIFS * sizeof(struct dj_workitem),
       GFP_KERNEL)) {
   kfree(djrcv_dev);
   djrcv_dev = ((void*)0);
   goto out;
  }
  kref_init(&djrcv_dev->kref);
  list_add_tail(&djrcv_dev->list, &dj_hdev_list);
  djrcv_dev->last_query = jiffies;
  djrcv_dev->type = type;
 }

 if (application == HID_GD_KEYBOARD)
  djrcv_dev->keyboard = hdev;
 if (application == HID_GD_MOUSE)
  djrcv_dev->mouse = hdev;
 if (is_hidpp)
  djrcv_dev->hidpp = hdev;

 hid_set_drvdata(hdev, djrcv_dev);
out:
 mutex_unlock(&dj_hdev_list_lock);
 return djrcv_dev;
}
