#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rmi_function {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_3__* queue; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * lock; TYPE_4__* v4l2_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; struct f54_data* drv_priv; } ;
struct f54_data {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work; TYPE_4__ v4l2; TYPE_1__ vdev; TYPE_3__ queue; int /*<<< orphan*/  lock; int /*<<< orphan*/ * report_data; int /*<<< orphan*/  num_tx_electrodes; int /*<<< orphan*/  num_rx_electrodes; int /*<<< orphan*/  status_mutex; int /*<<< orphan*/  data_mutex; struct rmi_function* fn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  F54_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFL_DIR_RX ; 
 int /*<<< orphan*/  VFL_TYPE_TOUCH ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct f54_data*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct f54_data*) ; 
 int FUNC11 (struct rmi_function*) ; 
 TYPE_3__ rmi_f54_queue ; 
 int /*<<< orphan*/  FUNC12 (struct f54_data*,int /*<<< orphan*/ ) ; 
 TYPE_1__ rmi_f54_video_device ; 
 int /*<<< orphan*/  rmi_f54_work ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int FUNC16 (TYPE_3__*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,struct f54_data*) ; 

__attribute__((used)) static int FUNC19(struct rmi_function *fn)
{
	struct f54_data *f54;
	int ret;
	u8 rx, tx;

	f54 = FUNC7(&fn->dev, sizeof(struct f54_data), GFP_KERNEL);
	if (!f54)
		return -ENOMEM;

	f54->fn = fn;
	FUNC6(&fn->dev, f54);

	ret = FUNC11(fn);
	if (ret)
		return ret;

	FUNC9(&f54->data_mutex);
	FUNC9(&f54->status_mutex);

	rx = f54->num_rx_electrodes;
	tx = f54->num_tx_electrodes;
	f54->report_data = FUNC7(&fn->dev,
					FUNC1(tx, rx, sizeof(u16)),
					GFP_KERNEL);
	if (f54->report_data == NULL)
		return -ENOMEM;

	FUNC0(&f54->work, rmi_f54_work);

	f54->workqueue = FUNC3("rmi4-poller");
	if (!f54->workqueue)
		return -ENOMEM;

	FUNC10(f54);
	FUNC12(f54, 0);

	/* register video device */
	FUNC13(f54->v4l2.name, F54_NAME, sizeof(f54->v4l2.name));
	ret = FUNC14(&fn->dev, &f54->v4l2);
	if (ret) {
		FUNC5(&fn->dev, "Unable to register video dev.\n");
		goto remove_wq;
	}

	/* initialize the queue */
	FUNC9(&f54->lock);
	f54->queue = rmi_f54_queue;
	f54->queue.drv_priv = f54;
	f54->queue.lock = &f54->lock;
	f54->queue.dev = &fn->dev;

	ret = FUNC16(&f54->queue);
	if (ret)
		goto remove_v4l2;

	f54->vdev = rmi_f54_video_device;
	f54->vdev.v4l2_dev = &f54->v4l2;
	f54->vdev.lock = &f54->lock;
	f54->vdev.vfl_dir = VFL_DIR_RX;
	f54->vdev.queue = &f54->queue;
	FUNC18(&f54->vdev, f54);

	ret = FUNC17(&f54->vdev, VFL_TYPE_TOUCH, -1);
	if (ret) {
		FUNC5(&fn->dev, "Unable to register video subdevice.");
		goto remove_v4l2;
	}

	return 0;

remove_v4l2:
	FUNC15(&f54->v4l2);
remove_wq:
	FUNC2(&f54->work);
	FUNC8(f54->workqueue);
	FUNC4(f54->workqueue);
	return ret;
}