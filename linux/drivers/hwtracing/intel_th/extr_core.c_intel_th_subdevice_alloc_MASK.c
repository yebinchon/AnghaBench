#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int end; int flags; int start; } ;
struct intel_th_subdevice {scalar_t__ type; int nres; int /*<<< orphan*/  scrpd; int /*<<< orphan*/  otype; scalar_t__ mknode; int /*<<< orphan*/  name; int /*<<< orphan*/  res; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  devt; } ;
struct TYPE_4__ {int port; int /*<<< orphan*/  scratchpad; int /*<<< orphan*/  type; } ;
struct intel_th_device {int host_mode; TYPE_2__ dev; int /*<<< orphan*/  resource; TYPE_1__ output; int /*<<< orphan*/  drvdata; } ;
struct intel_th {int num_resources; int irq; struct intel_th_device* hub; int /*<<< orphan*/  num_thdevs; int /*<<< orphan*/  major; int /*<<< orphan*/  dev; struct resource* resource; int /*<<< orphan*/  drvdata; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct intel_th_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct intel_th*,int /*<<< orphan*/ ) ; 
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ INTEL_TH_SWITCH ; 
 int IORESOURCE_IRQ ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TH_MMIO_CONFIG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  has_mintctl ; 
 int host_mode ; 
 int /*<<< orphan*/  host_mode_only ; 
 int FUNC5 (struct intel_th_device*,struct resource*,int) ; 
 struct intel_th_device* FUNC6 (struct intel_th*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_th*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (struct resource*) ; 

__attribute__((used)) static struct intel_th_device *
FUNC12(struct intel_th *th,
			 const struct intel_th_subdevice *subdev)
{
	struct intel_th_device *thdev;
	struct resource res[3];
	unsigned int req = 0;
	int r, err;

	thdev = FUNC6(th, subdev->type, subdev->name,
				      subdev->id);
	if (!thdev)
		return FUNC0(-ENOMEM);

	thdev->drvdata = th->drvdata;

	FUNC9(res, subdev->res,
	       sizeof(struct resource) * subdev->nres);

	for (r = 0; r < subdev->nres; r++) {
		struct resource *devres = th->resource;
		int bar = TH_MMIO_CONFIG;

		/*
		 * Take .end == 0 to mean 'take the whole bar',
		 * .start then tells us which bar it is. Default to
		 * TH_MMIO_CONFIG.
		 */
		if (!res[r].end && res[r].flags == IORESOURCE_MEM) {
			bar = res[r].start;
			err = -ENODEV;
			if (bar >= th->num_resources)
				goto fail_put_device;
			res[r].start = 0;
			res[r].end = FUNC11(&devres[bar]) - 1;
		}

		if (res[r].flags & IORESOURCE_MEM) {
			res[r].start	+= devres[bar].start;
			res[r].end	+= devres[bar].start;

			FUNC3(th->dev, "%s:%d @ %pR\n",
				subdev->name, r, &res[r]);
		} else if (res[r].flags & IORESOURCE_IRQ) {
			/*
			 * Only pass on the IRQ if we have useful interrupts:
			 * the ones that can be configured via MINTCTL.
			 */
			if (FUNC1(th, has_mintctl) && th->irq != -1)
				res[r].start = th->irq;
		}
	}

	err = FUNC5(thdev, res, subdev->nres);
	if (err) {
		FUNC10(&thdev->dev);
		goto fail_put_device;
	}

	if (subdev->type == INTEL_TH_OUTPUT) {
		if (subdev->mknode)
			thdev->dev.devt = FUNC2(th->major, th->num_thdevs);
		thdev->output.type = subdev->otype;
		thdev->output.port = -1;
		thdev->output.scratchpad = subdev->scrpd;
	} else if (subdev->type == INTEL_TH_SWITCH) {
		thdev->host_mode =
			FUNC1(th, host_mode_only) ? true : host_mode;
		th->hub = thdev;
	}

	err = FUNC4(&thdev->dev);
	if (err) {
		FUNC10(&thdev->dev);
		goto fail_free_res;
	}

	/* need switch driver to be loaded to enumerate the rest */
	if (subdev->type == INTEL_TH_SWITCH && !req) {
		err = FUNC7(th);
		if (!err)
			req++;
	}

	return thdev;

fail_free_res:
	FUNC8(thdev->resource);

fail_put_device:
	FUNC10(&thdev->dev);

	return FUNC0(err);
}