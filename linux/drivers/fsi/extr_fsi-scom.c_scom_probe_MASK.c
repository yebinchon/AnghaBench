#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  devt; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * type; } ;
struct scom_device {TYPE_1__ dev; int /*<<< orphan*/  cdev; struct fsi_device* fsi_dev; int /*<<< orphan*/  lock; } ;
struct fsi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct scom_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  fsi_cdev_type ; 
 int /*<<< orphan*/  fsi_dev_scom ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct scom_device*) ; 
 struct scom_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  scom_fops ; 
 int /*<<< orphan*/  scom_free ; 
 struct fsi_device* FUNC14 (struct device*) ; 

__attribute__((used)) static int FUNC15(struct device *dev)
{
	struct fsi_device *fsi_dev = FUNC14(dev);
	struct scom_device *scom;
	int rc, didx;

	scom = FUNC11(sizeof(*scom), GFP_KERNEL);
	if (!scom)
		return -ENOMEM;
	FUNC4(dev, scom);
	FUNC12(&scom->lock);

	/* Grab a reference to the device (parent of our cdev), we'll drop it later */
	if (!FUNC9(dev)) {
		FUNC10(scom);
		return -ENODEV;
	}
	scom->fsi_dev = fsi_dev;

	/* Create chardev for userspace access */
	scom->dev.type = &fsi_cdev_type;
	scom->dev.parent = dev;
	scom->dev.release = scom_free;
	FUNC6(&scom->dev);

	/* Allocate a minor in the FSI space */
	rc = FUNC8(fsi_dev, fsi_dev_scom, &scom->dev.devt, &didx);
	if (rc)
		goto err;

	FUNC5(&scom->dev, "scom%d", didx);
	FUNC1(&scom->cdev, &scom_fops);
	rc = FUNC0(&scom->cdev, &scom->dev);
	if (rc) {
		FUNC2(dev, "Error %d creating char device %s\n",
			rc, FUNC3(&scom->dev));
		goto err_free_minor;
	}

	return 0;
 err_free_minor:
	FUNC7(scom->dev.devt);
 err:
	FUNC13(&scom->dev);
	return rc;
}