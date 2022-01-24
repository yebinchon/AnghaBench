#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* altsetting; } ;
struct TYPE_19__ {int bInterfaceClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_24__ {TYPE_10__* ctrl_handler; int /*<<< orphan*/  name; } ;
struct TYPE_22__ {TYPE_7__* queue; int /*<<< orphan*/ * lock; TYPE_8__* v4l2_dev; } ;
struct TYPE_17__ {scalar_t__ error; } ;
struct TYPE_23__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; struct sur40_state* drv_priv; } ;
struct sur40_state {scalar_t__ bulk_in_epaddr; int vsvideo; struct input_polled_dev* input; struct sur40_state* bulk_in_buffer; TYPE_8__ v4l2; TYPE_4__ vdev; TYPE_10__ hdl; TYPE_7__ queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/ * dev; int /*<<< orphan*/  bulk_in_size; struct usb_device* usbdev; int /*<<< orphan*/  phys; int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; } ;
struct input_polled_dev {TYPE_16__* input; int /*<<< orphan*/  close; int /*<<< orphan*/  poll; int /*<<< orphan*/  open; int /*<<< orphan*/  poll_interval; struct sur40_state* private; } ;
struct TYPE_21__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_20__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_18__ {char* name; TYPE_3__ dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 char* DRIVER_LONG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POLL_INTERVAL ; 
 int /*<<< orphan*/  SUR40_BACKLIGHT_DEF ; 
 scalar_t__ SUR40_BACKLIGHT_MAX ; 
 scalar_t__ SUR40_BACKLIGHT_MIN ; 
 scalar_t__ SUR40_BRIGHTNESS_MAX ; 
 scalar_t__ SUR40_BRIGHTNESS_MIN ; 
 int SUR40_CONTRAST_DEF ; 
 scalar_t__ SUR40_CONTRAST_MAX ; 
 scalar_t__ SUR40_CONTRAST_MIN ; 
 int SUR40_GAIN_DEF ; 
 scalar_t__ SUR40_GAIN_MAX ; 
 scalar_t__ SUR40_GAIN_MIN ; 
 scalar_t__ TOUCH_ENDPOINT ; 
 int /*<<< orphan*/  V4L2_CID_BACKLIGHT_COMPENSATION ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  VFL_TYPE_TOUCH ; 
 int /*<<< orphan*/  brightness ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  contrast ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  gain ; 
 struct input_polled_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_polled_dev*) ; 
 int FUNC6 (struct input_polled_dev*) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct sur40_state*) ; 
 struct sur40_state* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sur40_state* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sur40_close ; 
 int /*<<< orphan*/  sur40_ctrl_ops ; 
 int /*<<< orphan*/  FUNC15 (TYPE_16__*) ; 
 int /*<<< orphan*/  sur40_open ; 
 int /*<<< orphan*/ * sur40_pix_format ; 
 int /*<<< orphan*/  sur40_poll ; 
 TYPE_7__ sur40_queue ; 
 TYPE_4__ sur40_video_device ; 
 int /*<<< orphan*/  FUNC16 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct sur40_state*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_8__*) ; 
 int FUNC26 (TYPE_7__*) ; 
 int FUNC27 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,struct sur40_state*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC30(struct usb_interface *interface,
		       const struct usb_device_id *id)
{
	struct usb_device *usbdev = FUNC7(interface);
	struct sur40_state *sur40;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	struct input_polled_dev *poll_dev;
	int error;

	/* Check if we really have the right interface. */
	iface_desc = &interface->altsetting[0];
	if (iface_desc->desc.bInterfaceClass != 0xFF)
		return -ENODEV;

	if (iface_desc->desc.bNumEndpoints < 5)
		return -ENODEV;

	/* Use endpoint #4 (0x86). */
	endpoint = &iface_desc->endpoint[4].desc;
	if (endpoint->bEndpointAddress != TOUCH_ENDPOINT)
		return -ENODEV;

	/* Allocate memory for our device state and initialize it. */
	sur40 = FUNC10(sizeof(struct sur40_state), GFP_KERNEL);
	if (!sur40)
		return -ENOMEM;

	poll_dev = FUNC4();
	if (!poll_dev) {
		error = -ENOMEM;
		goto err_free_dev;
	}

	/* initialize locks/lists */
	FUNC0(&sur40->buf_list);
	FUNC13(&sur40->qlock);
	FUNC11(&sur40->lock);

	/* Set up polled input device control structure */
	poll_dev->private = sur40;
	poll_dev->poll_interval = POLL_INTERVAL;
	poll_dev->open = sur40_open;
	poll_dev->poll = sur40_poll;
	poll_dev->close = sur40_close;

	/* Set up regular input device structure */
	FUNC15(poll_dev->input);

	poll_dev->input->name = DRIVER_LONG;
	FUNC19(usbdev, &poll_dev->input->id);
	FUNC17(usbdev, sur40->phys, sizeof(sur40->phys));
	FUNC14(sur40->phys, "/input0", sizeof(sur40->phys));
	poll_dev->input->phys = sur40->phys;
	poll_dev->input->dev.parent = &interface->dev;

	sur40->usbdev = usbdev;
	sur40->dev = &interface->dev;
	sur40->input = poll_dev;

	/* use the bulk-in endpoint tested above */
	sur40->bulk_in_size = FUNC16(endpoint);
	sur40->bulk_in_epaddr = endpoint->bEndpointAddress;
	sur40->bulk_in_buffer = FUNC9(sur40->bulk_in_size, GFP_KERNEL);
	if (!sur40->bulk_in_buffer) {
		FUNC3(&interface->dev, "Unable to allocate input buffer.");
		error = -ENOMEM;
		goto err_free_polldev;
	}

	/* register the polled input device */
	error = FUNC6(poll_dev);
	if (error) {
		FUNC3(&interface->dev,
			"Unable to register polled input device.");
		goto err_free_buffer;
	}

	/* register the video master device */
	FUNC12(sur40->v4l2.name, sizeof(sur40->v4l2.name), "%s", DRIVER_LONG);
	error = FUNC24(sur40->dev, &sur40->v4l2);
	if (error) {
		FUNC3(&interface->dev,
			"Unable to register video master device.");
		goto err_unreg_v4l2;
	}

	/* initialize the lock and subdevice */
	sur40->queue = sur40_queue;
	sur40->queue.drv_priv = sur40;
	sur40->queue.lock = &sur40->lock;
	sur40->queue.dev = sur40->dev;

	/* initialize the queue */
	error = FUNC26(&sur40->queue);
	if (error)
		goto err_unreg_v4l2;

	sur40->pix_fmt = sur40_pix_format[0];
	sur40->vdev = sur40_video_device;
	sur40->vdev.v4l2_dev = &sur40->v4l2;
	sur40->vdev.lock = &sur40->lock;
	sur40->vdev.queue = &sur40->queue;
	FUNC28(&sur40->vdev, sur40);

	/* initialize the control handler for 4 controls */
	FUNC21(&sur40->hdl, 4);
	sur40->v4l2.ctrl_handler = &sur40->hdl;
	sur40->vsvideo = (SUR40_CONTRAST_DEF << 4) | SUR40_GAIN_DEF;

	FUNC23(&sur40->hdl, &sur40_ctrl_ops, V4L2_CID_BRIGHTNESS,
	  SUR40_BRIGHTNESS_MIN, SUR40_BRIGHTNESS_MAX, 1, FUNC1(brightness,
	  (uint)SUR40_BRIGHTNESS_MIN, (uint)SUR40_BRIGHTNESS_MAX));

	FUNC23(&sur40->hdl, &sur40_ctrl_ops, V4L2_CID_CONTRAST,
	  SUR40_CONTRAST_MIN, SUR40_CONTRAST_MAX, 1, FUNC1(contrast,
	  (uint)SUR40_CONTRAST_MIN, (uint)SUR40_CONTRAST_MAX));

	FUNC23(&sur40->hdl, &sur40_ctrl_ops, V4L2_CID_GAIN,
	  SUR40_GAIN_MIN, SUR40_GAIN_MAX, 1, FUNC1(gain,
	  (uint)SUR40_GAIN_MIN, (uint)SUR40_GAIN_MAX));

	FUNC23(&sur40->hdl, &sur40_ctrl_ops,
	  V4L2_CID_BACKLIGHT_COMPENSATION, SUR40_BACKLIGHT_MIN,
	  SUR40_BACKLIGHT_MAX, 1, SUR40_BACKLIGHT_DEF);

	FUNC22(&sur40->hdl);

	if (sur40->hdl.error) {
		FUNC3(&interface->dev,
			"Unable to register video controls.");
		FUNC20(&sur40->hdl);
		goto err_unreg_v4l2;
	}

	error = FUNC27(&sur40->vdev, VFL_TYPE_TOUCH, -1);
	if (error) {
		FUNC3(&interface->dev,
			"Unable to register video subdevice.");
		goto err_unreg_video;
	}

	/* we can register the device now, as it is ready */
	FUNC18(interface, sur40);
	FUNC2(&interface->dev, "%s is now attached\n", DRIVER_DESC);

	return 0;

err_unreg_video:
	FUNC29(&sur40->vdev);
err_unreg_v4l2:
	FUNC25(&sur40->v4l2);
err_free_buffer:
	FUNC8(sur40->bulk_in_buffer);
err_free_polldev:
	FUNC5(sur40->input);
err_free_dev:
	FUNC8(sur40);

	return error;
}