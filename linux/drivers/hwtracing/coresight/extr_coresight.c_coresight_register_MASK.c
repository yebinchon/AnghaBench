#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fwnode; int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; } ;
struct TYPE_7__ {int link_subtype; } ;
struct coresight_device {scalar_t__ type; int orphan; TYPE_2__ dev; int /*<<< orphan*/  ops; TYPE_1__ subtype; TYPE_6__* pdata; int /*<<< orphan*/ * refcnt; } ;
struct coresight_desc {scalar_t__ type; TYPE_6__* pdata; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  groups; int /*<<< orphan*/  ops; TYPE_1__ subtype; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_9__ {int nr_inport; int nr_outport; } ;

/* Variables and functions */
 int CORESIGHT_DEV_SUBTYPE_LINK_MERG ; 
 int CORESIGHT_DEV_SUBTYPE_LINK_SPLIT ; 
 scalar_t__ CORESIGHT_DEV_TYPE_LINK ; 
 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ; 
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ; 
 int ENOMEM ; 
 struct coresight_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  coresight_bustype ; 
 int /*<<< orphan*/ * coresight_dev_type ; 
 int /*<<< orphan*/  coresight_device_release ; 
 int /*<<< orphan*/  FUNC1 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_device*) ; 
 int /*<<< orphan*/  coresight_mutex ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct coresight_device*) ; 
 struct coresight_device* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

struct coresight_device *FUNC16(struct coresight_desc *desc)
{
	int ret;
	int link_subtype;
	int nr_refcnts = 1;
	atomic_t *refcnts = NULL;
	struct coresight_device *csdev;

	csdev = FUNC12(sizeof(*csdev), GFP_KERNEL);
	if (!csdev) {
		ret = -ENOMEM;
		goto err_out;
	}

	if (desc->type == CORESIGHT_DEV_TYPE_LINK ||
	    desc->type == CORESIGHT_DEV_TYPE_LINKSINK) {
		link_subtype = desc->subtype.link_subtype;

		if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG)
			nr_refcnts = desc->pdata->nr_inport;
		else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT)
			nr_refcnts = desc->pdata->nr_outport;
	}

	refcnts = FUNC10(nr_refcnts, sizeof(*refcnts), GFP_KERNEL);
	if (!refcnts) {
		ret = -ENOMEM;
		goto err_free_csdev;
	}

	csdev->refcnt = refcnts;

	csdev->pdata = desc->pdata;

	csdev->type = desc->type;
	csdev->subtype = desc->subtype;
	csdev->ops = desc->ops;
	csdev->orphan = false;

	csdev->dev.type = &coresight_dev_type[desc->type];
	csdev->dev.groups = desc->groups;
	csdev->dev.parent = desc->dev;
	csdev->dev.release = coresight_device_release;
	csdev->dev.bus = &coresight_bustype;
	/*
	 * Hold the reference to our parent device. This will be
	 * dropped only in coresight_device_release().
	 */
	csdev->dev.fwnode = FUNC9(FUNC4(desc->dev));
	FUNC5(&csdev->dev, "%s", desc->name);

	ret = FUNC6(&csdev->dev);
	if (ret) {
		FUNC15(&csdev->dev);
		/*
		 * All resources are free'd explicitly via
		 * coresight_device_release(), triggered from put_device().
		 */
		goto err_out;
	}

	if (csdev->type == CORESIGHT_DEV_TYPE_SINK ||
	    csdev->type == CORESIGHT_DEV_TYPE_LINKSINK) {
		ret = FUNC8(csdev);

		if (ret) {
			FUNC7(&csdev->dev);
			/*
			 * As with the above, all resources are free'd
			 * explicitly via coresight_device_release() triggered
			 * from put_device(), which is in turn called from
			 * function device_unregister().
			 */
			goto err_out;
		}
	}

	FUNC13(&coresight_mutex);

	FUNC1(csdev);
	FUNC2(csdev);

	FUNC14(&coresight_mutex);

	return csdev;

err_free_csdev:
	FUNC11(csdev);
err_out:
	/* Cleanup the connection information */
	FUNC3(desc->pdata);
	return FUNC0(ret);
}