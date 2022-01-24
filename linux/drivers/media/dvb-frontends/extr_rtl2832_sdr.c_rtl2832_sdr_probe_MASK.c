#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_22__ ;
typedef  struct TYPE_26__   TYPE_21__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_16__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct v4l2_ctrl_ops {int dummy; } ;
struct rtl2832_sdr_platform_data {int tuner; TYPE_3__* dvb_usb_device; int /*<<< orphan*/  regmap; struct v4l2_subdev* v4l2_subdev; } ;
struct rtl2832_sdr_frame_buf {int dummy; } ;
struct TYPE_23__ {int error; } ;
struct TYPE_32__ {TYPE_11__* ctrl_handler; int /*<<< orphan*/  release; } ;
struct TYPE_30__ {int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * lock; TYPE_8__* v4l2_dev; TYPE_7__* queue; } ;
struct TYPE_31__ {int io_modes; int buf_struct_size; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct rtl2832_sdr_dev* drv_priv; int /*<<< orphan*/  type; } ;
struct rtl2832_sdr_dev {int num_formats; TYPE_11__ hdl; TYPE_8__ v4l2_dev; TYPE_4__ vdev; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  vb_queue_lock; TYPE_7__ vb_queue; void* bandwidth_auto; void* bandwidth; int /*<<< orphan*/  queued_bufs; int /*<<< orphan*/  queued_bufs_lock; int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  f_tuner; int /*<<< orphan*/  f_adc; int /*<<< orphan*/  udev; int /*<<< orphan*/  regmap; struct platform_device* pdev; struct v4l2_subdev* v4l2_subdev; } ;
struct TYPE_33__ {TYPE_2__* parent; struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_9__ dev; } ;
struct TYPE_29__ {int /*<<< orphan*/  udev; } ;
struct TYPE_28__ {TYPE_1__* driver; } ;
struct TYPE_27__ {int /*<<< orphan*/  rangelow; } ;
struct TYPE_26__ {int /*<<< orphan*/  rangelow; } ;
struct TYPE_25__ {int /*<<< orphan*/  owner; } ;
struct TYPE_24__ {int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_FORMATS ; 
#define  RTL2832_SDR_TUNER_E4000 133 
#define  RTL2832_SDR_TUNER_FC0012 132 
#define  RTL2832_SDR_TUNER_FC0013 131 
#define  RTL2832_SDR_TUNER_FC2580 130 
#define  RTL2832_SDR_TUNER_R820T 129 
#define  RTL2832_SDR_TUNER_R828D 128 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_SDR_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_BANDWIDTH ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_DIR_RX ; 
 int /*<<< orphan*/  VFL_TYPE_SDR ; 
 TYPE_22__* bands_adc ; 
 TYPE_21__* bands_fm ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,char*) ; 
 TYPE_16__* formats ; 
 int /*<<< orphan*/  FUNC5 (struct rtl2832_sdr_dev*) ; 
 struct rtl2832_sdr_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rtl2832_sdr_dev*) ; 
 struct v4l2_ctrl_ops rtl2832_sdr_ctrl_ops ; 
 int /*<<< orphan*/  rtl2832_sdr_emulated_fmt ; 
 TYPE_4__ rtl2832_sdr_template ; 
 int /*<<< orphan*/  rtl2832_sdr_vb2_ops ; 
 int /*<<< orphan*/  rtl2832_sdr_video_release ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*,int) ; 
 void* FUNC16 (TYPE_11__*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC17 (TYPE_9__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*) ; 
 int FUNC19 (TYPE_7__*) ; 
 int /*<<< orphan*/  vb2_vmalloc_memops ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int FUNC21 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,struct rtl2832_sdr_dev*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct rtl2832_sdr_dev *dev;
	struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
	const struct v4l2_ctrl_ops *ops = &rtl2832_sdr_ctrl_ops;
	struct v4l2_subdev *subdev;
	int ret;

	FUNC1(&pdev->dev, "\n");

	if (!pdata) {
		FUNC2(&pdev->dev, "Cannot proceed without platform data\n");
		ret = -EINVAL;
		goto err;
	}
	if (!pdev->dev.parent->driver) {
		FUNC1(&pdev->dev, "No parent device\n");
		ret = -EINVAL;
		goto err;
	}
	/* try to refcount host drv since we are the consumer */
	if (!FUNC11(pdev->dev.parent->driver->owner)) {
		FUNC2(&pdev->dev, "Refcount fail");
		ret = -EINVAL;
		goto err;
	}
	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		ret = -ENOMEM;
		goto err_module_put;
	}

	/* setup the state */
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

	FUNC8(&dev->v4l2_lock);
	FUNC8(&dev->vb_queue_lock);
	FUNC10(&dev->queued_bufs_lock);
	FUNC0(&dev->queued_bufs);

	/* Init videobuf2 queue structure */
	dev->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
	dev->vb_queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
	dev->vb_queue.drv_priv = dev;
	dev->vb_queue.buf_struct_size = sizeof(struct rtl2832_sdr_frame_buf);
	dev->vb_queue.ops = &rtl2832_sdr_vb2_ops;
	dev->vb_queue.mem_ops = &vb2_vmalloc_memops;
	dev->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	ret = FUNC19(&dev->vb_queue);
	if (ret) {
		FUNC2(&pdev->dev, "Could not initialize vb2 queue\n");
		goto err_kfree;
	}

	/* Register controls */
	switch (pdata->tuner) {
	case RTL2832_SDR_TUNER_E4000:
		FUNC15(&dev->hdl, 9);
		if (subdev)
			FUNC12(&dev->hdl, subdev->ctrl_handler,
					      NULL, true);
		break;
	case RTL2832_SDR_TUNER_R820T:
	case RTL2832_SDR_TUNER_R828D:
		FUNC15(&dev->hdl, 2);
		dev->bandwidth_auto = FUNC16(&dev->hdl, ops,
							V4L2_CID_RF_TUNER_BANDWIDTH_AUTO,
							0, 1, 1, 1);
		dev->bandwidth = FUNC16(&dev->hdl, ops,
						   V4L2_CID_RF_TUNER_BANDWIDTH,
						   0, 8000000, 100000, 0);
		FUNC13(2, &dev->bandwidth_auto, 0, false);
		break;
	case RTL2832_SDR_TUNER_FC0012:
	case RTL2832_SDR_TUNER_FC0013:
		FUNC15(&dev->hdl, 2);
		dev->bandwidth_auto = FUNC16(&dev->hdl, ops,
							V4L2_CID_RF_TUNER_BANDWIDTH_AUTO,
							0, 1, 1, 1);
		dev->bandwidth = FUNC16(&dev->hdl, ops,
						   V4L2_CID_RF_TUNER_BANDWIDTH,
						   6000000, 8000000, 1000000,
						   6000000);
		FUNC13(2, &dev->bandwidth_auto, 0, false);
		break;
	case RTL2832_SDR_TUNER_FC2580:
		FUNC15(&dev->hdl, 2);
		if (subdev)
			FUNC12(&dev->hdl, subdev->ctrl_handler,
					      NULL, true);
		break;
	default:
		FUNC15(&dev->hdl, 0);
		FUNC2(&pdev->dev, "Unsupported tuner\n");
		goto err_v4l2_ctrl_handler_free;
	}
	if (dev->hdl.error) {
		ret = dev->hdl.error;
		FUNC2(&pdev->dev, "Could not initialize controls\n");
		goto err_v4l2_ctrl_handler_free;
	}

	/* Init video_device structure */
	dev->vdev = rtl2832_sdr_template;
	dev->vdev.queue = &dev->vb_queue;
	dev->vdev.queue->lock = &dev->vb_queue_lock;
	FUNC22(&dev->vdev, dev);

	/* Register the v4l2_device structure */
	dev->v4l2_dev.release = rtl2832_sdr_video_release;
	ret = FUNC17(&pdev->dev, &dev->v4l2_dev);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to register v4l2-device %d\n", ret);
		goto err_v4l2_ctrl_handler_free;
	}

	dev->v4l2_dev.ctrl_handler = &dev->hdl;
	dev->vdev.v4l2_dev = &dev->v4l2_dev;
	dev->vdev.lock = &dev->v4l2_lock;
	dev->vdev.vfl_dir = VFL_DIR_RX;

	ret = FUNC21(&dev->vdev, VFL_TYPE_SDR, -1);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to register as video device %d\n",
			ret);
		goto err_v4l2_device_unregister;
	}
	FUNC3(&pdev->dev, "Registered as %s\n",
		 FUNC20(&dev->vdev));
	FUNC3(&pdev->dev, "Realtek RTL2832 SDR attached\n");
	FUNC4(&pdev->dev,
		   "SDR API is still slightly experimental and functionality changes may follow\n");
	FUNC9(pdev, dev);
	return 0;
err_v4l2_device_unregister:
	FUNC18(&dev->v4l2_dev);
err_v4l2_ctrl_handler_free:
	FUNC14(&dev->hdl);
err_kfree:
	FUNC5(dev);
err_module_put:
	FUNC7(pdev->dev.parent->driver->owner);
err:
	return ret;
}