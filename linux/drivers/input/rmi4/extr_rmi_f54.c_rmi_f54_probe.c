
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rmi_function {int dev; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_8__ {TYPE_3__* queue; int vfl_dir; int * lock; TYPE_4__* v4l2_dev; } ;
struct TYPE_9__ {int * dev; int * lock; struct f54_data* drv_priv; } ;
struct f54_data {int workqueue; int work; TYPE_4__ v4l2; TYPE_1__ vdev; TYPE_3__ queue; int lock; int * report_data; int num_tx_electrodes; int num_rx_electrodes; int status_mutex; int data_mutex; struct rmi_function* fn; } ;


 int ENOMEM ;
 int F54_NAME ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int VFL_DIR_RX ;
 int VFL_TYPE_TOUCH ;
 int array3_size (int ,int ,int) ;
 int cancel_delayed_work_sync (int *) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct f54_data*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int flush_workqueue (int ) ;
 int mutex_init (int *) ;
 int rmi_f54_create_input_map (struct f54_data*) ;
 int rmi_f54_detect (struct rmi_function*) ;
 TYPE_3__ rmi_f54_queue ;
 int rmi_f54_set_input (struct f54_data*,int ) ;
 TYPE_1__ rmi_f54_video_device ;
 int rmi_f54_work ;
 int strlcpy (int ,int ,int) ;
 int v4l2_device_register (int *,TYPE_4__*) ;
 int v4l2_device_unregister (TYPE_4__*) ;
 int vb2_queue_init (TYPE_3__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct f54_data*) ;

__attribute__((used)) static int rmi_f54_probe(struct rmi_function *fn)
{
 struct f54_data *f54;
 int ret;
 u8 rx, tx;

 f54 = devm_kzalloc(&fn->dev, sizeof(struct f54_data), GFP_KERNEL);
 if (!f54)
  return -ENOMEM;

 f54->fn = fn;
 dev_set_drvdata(&fn->dev, f54);

 ret = rmi_f54_detect(fn);
 if (ret)
  return ret;

 mutex_init(&f54->data_mutex);
 mutex_init(&f54->status_mutex);

 rx = f54->num_rx_electrodes;
 tx = f54->num_tx_electrodes;
 f54->report_data = devm_kzalloc(&fn->dev,
     array3_size(tx, rx, sizeof(u16)),
     GFP_KERNEL);
 if (f54->report_data == ((void*)0))
  return -ENOMEM;

 INIT_DELAYED_WORK(&f54->work, rmi_f54_work);

 f54->workqueue = create_singlethread_workqueue("rmi4-poller");
 if (!f54->workqueue)
  return -ENOMEM;

 rmi_f54_create_input_map(f54);
 rmi_f54_set_input(f54, 0);


 strlcpy(f54->v4l2.name, F54_NAME, sizeof(f54->v4l2.name));
 ret = v4l2_device_register(&fn->dev, &f54->v4l2);
 if (ret) {
  dev_err(&fn->dev, "Unable to register video dev.\n");
  goto remove_wq;
 }


 mutex_init(&f54->lock);
 f54->queue = rmi_f54_queue;
 f54->queue.drv_priv = f54;
 f54->queue.lock = &f54->lock;
 f54->queue.dev = &fn->dev;

 ret = vb2_queue_init(&f54->queue);
 if (ret)
  goto remove_v4l2;

 f54->vdev = rmi_f54_video_device;
 f54->vdev.v4l2_dev = &f54->v4l2;
 f54->vdev.lock = &f54->lock;
 f54->vdev.vfl_dir = VFL_DIR_RX;
 f54->vdev.queue = &f54->queue;
 video_set_drvdata(&f54->vdev, f54);

 ret = video_register_device(&f54->vdev, VFL_TYPE_TOUCH, -1);
 if (ret) {
  dev_err(&fn->dev, "Unable to register video subdevice.");
  goto remove_v4l2;
 }

 return 0;

remove_v4l2:
 v4l2_device_unregister(&f54->v4l2);
remove_wq:
 cancel_delayed_work_sync(&f54->work);
 flush_workqueue(f54->workqueue);
 destroy_workqueue(f54->workqueue);
 return ret;
}
