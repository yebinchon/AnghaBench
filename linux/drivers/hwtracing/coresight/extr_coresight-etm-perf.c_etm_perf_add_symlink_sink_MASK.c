#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_2__ attr; int /*<<< orphan*/  show; } ;
struct dev_ext_attribute {unsigned long* var; TYPE_1__ attr; } ;
struct coresight_device {scalar_t__ type; struct dev_ext_attribute* ea; struct device dev; } ;
struct TYPE_7__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ CORESIGHT_DEV_TYPE_LINKSINK ; 
 scalar_t__ CORESIGHT_DEV_TYPE_SINK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 struct dev_ext_attribute* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etm_perf_sink_name_show ; 
 int /*<<< orphan*/  etm_perf_up ; 
 TYPE_4__ etm_pmu ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int FUNC7(struct coresight_device *csdev)
{
	int ret;
	unsigned long hash;
	const char *name;
	struct device *pmu_dev = etm_pmu.dev;
	struct device *dev = &csdev->dev;
	struct dev_ext_attribute *ea;

	if (csdev->type != CORESIGHT_DEV_TYPE_SINK &&
	    csdev->type != CORESIGHT_DEV_TYPE_LINKSINK)
		return -EINVAL;

	if (csdev->ea != NULL)
		return -EINVAL;

	if (!etm_perf_up)
		return -EPROBE_DEFER;

	ea = FUNC2(dev, sizeof(*ea), GFP_KERNEL);
	if (!ea)
		return -ENOMEM;

	name = FUNC0(dev);
	/* See function coresight_get_sink_by_id() to know where this is used */
	hash = FUNC3(FUNC4(NULL, name));

	FUNC6(&ea->attr.attr);
	ea->attr.attr.name = FUNC1(dev, name, GFP_KERNEL);
	if (!ea->attr.attr.name)
		return -ENOMEM;

	ea->attr.attr.mode = 0444;
	ea->attr.show = etm_perf_sink_name_show;
	ea->var = (unsigned long *)hash;

	ret = FUNC5(&pmu_dev->kobj,
				      &ea->attr.attr, "sinks");

	if (!ret)
		csdev->ea = ea;

	return ret;
}