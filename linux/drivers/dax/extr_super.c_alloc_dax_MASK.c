#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dax_operations {int dummy; } ;
struct dax_device {void* private; struct dax_operations const* ops; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 unsigned long DAXDEV_F_SYNC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINORMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dax_device*,char const*) ; 
 struct dax_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dax_devt ; 
 int /*<<< orphan*/  dax_minor_ida ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dax_device*) ; 

struct dax_device *FUNC9(void *private, const char *__host,
		const struct dax_operations *ops, unsigned long flags)
{
	struct dax_device *dax_dev;
	const char *host;
	dev_t devt;
	int minor;

	host = FUNC7(__host, GFP_KERNEL);
	if (__host && !host)
		return NULL;

	minor = FUNC4(&dax_minor_ida, 0, MINORMASK+1, GFP_KERNEL);
	if (minor < 0)
		goto err_minor;

	devt = FUNC1(FUNC0(dax_devt), minor);
	dax_dev = FUNC3(devt);
	if (!dax_dev)
		goto err_dev;

	FUNC2(dax_dev, host);
	dax_dev->ops = ops;
	dax_dev->private = private;
	if (flags & DAXDEV_F_SYNC)
		FUNC8(dax_dev);

	return dax_dev;

 err_dev:
	FUNC5(&dax_minor_ida, minor);
 err_minor:
	FUNC6(host);
	return NULL;
}