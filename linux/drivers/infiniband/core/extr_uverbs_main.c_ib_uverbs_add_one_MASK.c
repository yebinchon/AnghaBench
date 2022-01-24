#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ devt; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/  class; } ;
struct TYPE_12__ {int /*<<< orphan*/  owner; } ;
struct ib_uverbs_device {int devnum; TYPE_3__ dev; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; TYPE_6__ cdev; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  uverbs_events_file_list; int /*<<< orphan*/  uverbs_file_list; int /*<<< orphan*/  lists_mutex; int /*<<< orphan*/  xrcd_tree_mutex; int /*<<< orphan*/  xrcd_tree; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  disassociate_srcu; } ;
struct TYPE_10__ {scalar_t__ mmap; int /*<<< orphan*/  alloc_ucontext; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct ib_device {TYPE_2__ ops; int /*<<< orphan*/  num_comp_vectors; TYPE_1__ dev; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_UVERBS_BASE_DEV ; 
 scalar_t__ IB_UVERBS_MAX_DEVICES ; 
 int IB_UVERBS_NUM_FIXED_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_group ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ dynamic_uverbs_dev ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int /*<<< orphan*/ *,struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_uverbs_device*) ; 
 scalar_t__ FUNC9 (struct ib_device*,struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  ib_uverbs_release_dev ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_uverbs_device*) ; 
 struct ib_uverbs_device* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct ib_device*) ; 
 int /*<<< orphan*/  uverbs_class ; 
 int /*<<< orphan*/  uverbs_client ; 
 int /*<<< orphan*/  uverbs_fops ; 
 int /*<<< orphan*/  uverbs_ida ; 
 int /*<<< orphan*/  uverbs_mmap_fops ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct ib_device *device)
{
	int devnum;
	dev_t base;
	struct ib_uverbs_device *uverbs_dev;
	int ret;

	if (!device->ops.alloc_ucontext)
		return;

	uverbs_dev = FUNC15(sizeof(*uverbs_dev), GFP_KERNEL);
	if (!uverbs_dev)
		return;

	ret = FUNC13(&uverbs_dev->disassociate_srcu);
	if (ret) {
		FUNC14(uverbs_dev);
		return;
	}

	FUNC6(&uverbs_dev->dev);
	uverbs_dev->dev.class = uverbs_class;
	uverbs_dev->dev.parent = device->dev.parent;
	uverbs_dev->dev.release = ib_uverbs_release_dev;
	uverbs_dev->groups[0] = &dev_attr_group;
	uverbs_dev->dev.groups = uverbs_dev->groups;
	FUNC2(&uverbs_dev->refcount, 1);
	FUNC12(&uverbs_dev->comp);
	uverbs_dev->xrcd_tree = RB_ROOT;
	FUNC16(&uverbs_dev->xrcd_tree_mutex);
	FUNC16(&uverbs_dev->lists_mutex);
	FUNC0(&uverbs_dev->uverbs_file_list);
	FUNC0(&uverbs_dev->uverbs_events_file_list);
	FUNC18(uverbs_dev->ib_dev, device);
	uverbs_dev->num_comp_vectors = device->num_comp_vectors;

	devnum = FUNC10(&uverbs_ida, IB_UVERBS_MAX_DEVICES - 1,
			       GFP_KERNEL);
	if (devnum < 0)
		goto err;
	uverbs_dev->devnum = devnum;
	if (devnum >= IB_UVERBS_NUM_FIXED_MINOR)
		base = dynamic_uverbs_dev + devnum - IB_UVERBS_NUM_FIXED_MINOR;
	else
		base = IB_UVERBS_BASE_DEV + devnum;

	if (FUNC9(device, uverbs_dev))
		goto err_uapi;

	uverbs_dev->dev.devt = base;
	FUNC5(&uverbs_dev->dev, "uverbs%d", uverbs_dev->devnum);

	FUNC4(&uverbs_dev->cdev,
		  device->ops.mmap ? &uverbs_mmap_fops : &uverbs_fops);
	uverbs_dev->cdev.owner = THIS_MODULE;

	ret = FUNC3(&uverbs_dev->cdev, &uverbs_dev->dev);
	if (ret)
		goto err_uapi;

	FUNC7(device, &uverbs_client, uverbs_dev);
	return;

err_uapi:
	FUNC11(&uverbs_ida, devnum);
err:
	if (FUNC1(&uverbs_dev->refcount))
		FUNC8(uverbs_dev);
	FUNC19(&uverbs_dev->comp);
	FUNC17(&uverbs_dev->dev);
	return;
}