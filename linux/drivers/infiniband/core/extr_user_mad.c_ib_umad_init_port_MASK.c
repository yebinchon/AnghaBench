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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* devt; } ;
struct TYPE_10__ {void* owner; } ;
struct ib_umad_port {int dev_num; int port_num; TYPE_1__ dev; TYPE_4__ cdev; TYPE_1__ sm_dev; TYPE_4__ sm_cdev; int /*<<< orphan*/  file_list; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  sm_sem; struct ib_umad_device* umad_dev; struct ib_device* ib_dev; } ;
struct ib_umad_device {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  void* dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_UMAD_MAX_PORTS ; 
 int IB_UMAD_NUM_FIXED_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* THIS_MODULE ; 
 void* base_issm_dev ; 
 void* base_umad_dev ; 
 int FUNC1 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 void* dynamic_issm_dev ; 
 void* dynamic_umad_dev ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct ib_umad_port*,struct ib_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  umad_fops ; 
 int /*<<< orphan*/  umad_ida ; 
 int /*<<< orphan*/  umad_sm_fops ; 

__attribute__((used)) static int FUNC11(struct ib_device *device, int port_num,
			     struct ib_umad_device *umad_dev,
			     struct ib_umad_port *port)
{
	int devnum;
	dev_t base_umad;
	dev_t base_issm;
	int ret;

	devnum = FUNC6(&umad_ida, IB_UMAD_MAX_PORTS - 1, GFP_KERNEL);
	if (devnum < 0)
		return -1;
	port->dev_num = devnum;
	if (devnum >= IB_UMAD_NUM_FIXED_MINOR) {
		base_umad = dynamic_umad_dev + devnum - IB_UMAD_NUM_FIXED_MINOR;
		base_issm = dynamic_issm_dev + devnum - IB_UMAD_NUM_FIXED_MINOR;
	} else {
		base_umad = devnum + base_umad_dev;
		base_issm = devnum + base_issm_dev;
	}

	port->ib_dev   = device;
	port->umad_dev = umad_dev;
	port->port_num = port_num;
	FUNC10(&port->sm_sem, 1);
	FUNC8(&port->file_mutex);
	FUNC0(&port->file_list);

	FUNC5(&port->dev, port, device);
	port->dev.devt = base_umad;
	FUNC4(&port->dev, "umad%d", port->dev_num);
	FUNC3(&port->cdev, &umad_fops);
	port->cdev.owner = THIS_MODULE;

	ret = FUNC1(&port->cdev, &port->dev);
	if (ret)
		goto err_cdev;

	FUNC5(&port->sm_dev, port, device);
	port->sm_dev.devt = base_issm;
	FUNC4(&port->sm_dev, "issm%d", port->dev_num);
	FUNC3(&port->sm_cdev, &umad_sm_fops);
	port->sm_cdev.owner = THIS_MODULE;

	ret = FUNC1(&port->sm_cdev, &port->sm_dev);
	if (ret)
		goto err_dev;

	return 0;

err_dev:
	FUNC9(&port->sm_dev);
	FUNC2(&port->cdev, &port->dev);
err_cdev:
	FUNC9(&port->dev);
	FUNC7(&umad_ida, devnum);
	return ret;
}