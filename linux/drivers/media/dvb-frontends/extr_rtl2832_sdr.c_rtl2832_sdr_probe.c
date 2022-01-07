
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_22__ ;
typedef struct TYPE_26__ TYPE_21__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_11__ ;


struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_ctrl_ops {int dummy; } ;
struct rtl2832_sdr_platform_data {int tuner; TYPE_3__* dvb_usb_device; int regmap; struct v4l2_subdev* v4l2_subdev; } ;
struct rtl2832_sdr_frame_buf {int dummy; } ;
struct TYPE_23__ {int error; } ;
struct TYPE_32__ {TYPE_11__* ctrl_handler; int release; } ;
struct TYPE_30__ {int vfl_dir; int * lock; TYPE_8__* v4l2_dev; TYPE_7__* queue; } ;
struct TYPE_31__ {int io_modes; int buf_struct_size; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct rtl2832_sdr_dev* drv_priv; int type; } ;
struct rtl2832_sdr_dev {int num_formats; TYPE_11__ hdl; TYPE_8__ v4l2_dev; TYPE_4__ vdev; int v4l2_lock; int vb_queue_lock; TYPE_7__ vb_queue; void* bandwidth_auto; void* bandwidth; int queued_bufs; int queued_bufs_lock; int buffersize; int pixelformat; int f_tuner; int f_adc; int udev; int regmap; struct platform_device* pdev; struct v4l2_subdev* v4l2_subdev; } ;
struct TYPE_33__ {TYPE_2__* parent; struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_9__ dev; } ;
struct TYPE_29__ {int udev; } ;
struct TYPE_28__ {TYPE_1__* driver; } ;
struct TYPE_27__ {int rangelow; } ;
struct TYPE_26__ {int rangelow; } ;
struct TYPE_25__ {int owner; } ;
struct TYPE_24__ {int buffersize; int pixelformat; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_FORMATS ;






 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_SDR_CAPTURE ;
 int V4L2_CID_RF_TUNER_BANDWIDTH ;
 int V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_DIR_RX ;
 int VFL_TYPE_SDR ;
 TYPE_22__* bands_adc ;
 TYPE_21__* bands_fm ;
 int dev_dbg (TYPE_9__*,char*) ;
 int dev_err (TYPE_9__*,char*,...) ;
 int dev_info (TYPE_9__*,char*,...) ;
 int dev_notice (TYPE_9__*,char*) ;
 TYPE_16__* formats ;
 int kfree (struct rtl2832_sdr_dev*) ;
 struct rtl2832_sdr_dev* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rtl2832_sdr_dev*) ;
 struct v4l2_ctrl_ops rtl2832_sdr_ctrl_ops ;
 int rtl2832_sdr_emulated_fmt ;
 TYPE_4__ rtl2832_sdr_template ;
 int rtl2832_sdr_vb2_ops ;
 int rtl2832_sdr_video_release ;
 int spin_lock_init (int *) ;
 int try_module_get (int ) ;
 int v4l2_ctrl_add_handler (TYPE_11__*,int ,int *,int) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_free (TYPE_11__*) ;
 int v4l2_ctrl_handler_init (TYPE_11__*,int) ;
 void* v4l2_ctrl_new_std (TYPE_11__*,struct v4l2_ctrl_ops const*,int ,int,int,int,int) ;
 int v4l2_device_register (TYPE_9__*,TYPE_8__*) ;
 int v4l2_device_unregister (TYPE_8__*) ;
 int vb2_queue_init (TYPE_7__*) ;
 int vb2_vmalloc_memops ;
 int video_device_node_name (TYPE_4__*) ;
 int video_register_device (TYPE_4__*,int ,int) ;
 int video_set_drvdata (TYPE_4__*,struct rtl2832_sdr_dev*) ;

__attribute__((used)) static int rtl2832_sdr_probe(struct platform_device *pdev)
{
 struct rtl2832_sdr_dev *dev;
 struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
 const struct v4l2_ctrl_ops *ops = &rtl2832_sdr_ctrl_ops;
 struct v4l2_subdev *subdev;
 int ret;

 dev_dbg(&pdev->dev, "\n");

 if (!pdata) {
  dev_err(&pdev->dev, "Cannot proceed without platform data\n");
  ret = -EINVAL;
  goto err;
 }
 if (!pdev->dev.parent->driver) {
  dev_dbg(&pdev->dev, "No parent device\n");
  ret = -EINVAL;
  goto err;
 }

 if (!try_module_get(pdev->dev.parent->driver->owner)) {
  dev_err(&pdev->dev, "Refcount fail");
  ret = -EINVAL;
  goto err;
 }
 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  ret = -ENOMEM;
  goto err_module_put;
 }


 subdev = pdata->v4l2_subdev;
 dev->v4l2_subdev = pdata->v4l2_subdev;
 dev->pdev = pdev;
 dev->regmap = pdata->regmap;
 dev->udev = pdata->dvb_usb_device->udev;
 dev->f_adc = bands_adc[0].rangelow;
 dev->f_tuner = bands_fm[0].rangelow;
 dev->pixelformat = formats[0].pixelformat;
 dev->buffersize = formats[0].buffersize;
 dev->num_formats = NUM_FORMATS;
 if (!rtl2832_sdr_emulated_fmt)
  dev->num_formats -= 1;

 mutex_init(&dev->v4l2_lock);
 mutex_init(&dev->vb_queue_lock);
 spin_lock_init(&dev->queued_bufs_lock);
 INIT_LIST_HEAD(&dev->queued_bufs);


 dev->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
 dev->vb_queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 dev->vb_queue.drv_priv = dev;
 dev->vb_queue.buf_struct_size = sizeof(struct rtl2832_sdr_frame_buf);
 dev->vb_queue.ops = &rtl2832_sdr_vb2_ops;
 dev->vb_queue.mem_ops = &vb2_vmalloc_memops;
 dev->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 ret = vb2_queue_init(&dev->vb_queue);
 if (ret) {
  dev_err(&pdev->dev, "Could not initialize vb2 queue\n");
  goto err_kfree;
 }


 switch (pdata->tuner) {
 case 133:
  v4l2_ctrl_handler_init(&dev->hdl, 9);
  if (subdev)
   v4l2_ctrl_add_handler(&dev->hdl, subdev->ctrl_handler,
           ((void*)0), 1);
  break;
 case 129:
 case 128:
  v4l2_ctrl_handler_init(&dev->hdl, 2);
  dev->bandwidth_auto = v4l2_ctrl_new_std(&dev->hdl, ops,
       V4L2_CID_RF_TUNER_BANDWIDTH_AUTO,
       0, 1, 1, 1);
  dev->bandwidth = v4l2_ctrl_new_std(&dev->hdl, ops,
         V4L2_CID_RF_TUNER_BANDWIDTH,
         0, 8000000, 100000, 0);
  v4l2_ctrl_auto_cluster(2, &dev->bandwidth_auto, 0, 0);
  break;
 case 132:
 case 131:
  v4l2_ctrl_handler_init(&dev->hdl, 2);
  dev->bandwidth_auto = v4l2_ctrl_new_std(&dev->hdl, ops,
       V4L2_CID_RF_TUNER_BANDWIDTH_AUTO,
       0, 1, 1, 1);
  dev->bandwidth = v4l2_ctrl_new_std(&dev->hdl, ops,
         V4L2_CID_RF_TUNER_BANDWIDTH,
         6000000, 8000000, 1000000,
         6000000);
  v4l2_ctrl_auto_cluster(2, &dev->bandwidth_auto, 0, 0);
  break;
 case 130:
  v4l2_ctrl_handler_init(&dev->hdl, 2);
  if (subdev)
   v4l2_ctrl_add_handler(&dev->hdl, subdev->ctrl_handler,
           ((void*)0), 1);
  break;
 default:
  v4l2_ctrl_handler_init(&dev->hdl, 0);
  dev_err(&pdev->dev, "Unsupported tuner\n");
  goto err_v4l2_ctrl_handler_free;
 }
 if (dev->hdl.error) {
  ret = dev->hdl.error;
  dev_err(&pdev->dev, "Could not initialize controls\n");
  goto err_v4l2_ctrl_handler_free;
 }


 dev->vdev = rtl2832_sdr_template;
 dev->vdev.queue = &dev->vb_queue;
 dev->vdev.queue->lock = &dev->vb_queue_lock;
 video_set_drvdata(&dev->vdev, dev);


 dev->v4l2_dev.release = rtl2832_sdr_video_release;
 ret = v4l2_device_register(&pdev->dev, &dev->v4l2_dev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register v4l2-device %d\n", ret);
  goto err_v4l2_ctrl_handler_free;
 }

 dev->v4l2_dev.ctrl_handler = &dev->hdl;
 dev->vdev.v4l2_dev = &dev->v4l2_dev;
 dev->vdev.lock = &dev->v4l2_lock;
 dev->vdev.vfl_dir = VFL_DIR_RX;

 ret = video_register_device(&dev->vdev, VFL_TYPE_SDR, -1);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register as video device %d\n",
   ret);
  goto err_v4l2_device_unregister;
 }
 dev_info(&pdev->dev, "Registered as %s\n",
   video_device_node_name(&dev->vdev));
 dev_info(&pdev->dev, "Realtek RTL2832 SDR attached\n");
 dev_notice(&pdev->dev,
     "SDR API is still slightly experimental and functionality changes may follow\n");
 platform_set_drvdata(pdev, dev);
 return 0;
err_v4l2_device_unregister:
 v4l2_device_unregister(&dev->v4l2_dev);
err_v4l2_ctrl_handler_free:
 v4l2_ctrl_handler_free(&dev->hdl);
err_kfree:
 kfree(dev);
err_module_put:
 module_put(pdev->dev.parent->driver->owner);
err:
 return ret;
}
