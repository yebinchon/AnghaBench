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
struct resource {int flags; int start; } ;
struct intel_th_drvdata {int dummy; } ;
struct intel_th {int id; int major; int irq; int num_resources; struct resource* resource; struct intel_th_drvdata* drvdata; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct intel_th* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IORESOURCE_IRQ 129 
#define  IORESOURCE_MEM 128 
 int IORESOURCE_TYPE_BITS ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TH_POSSIBLE_OUTPUTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct intel_th*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_th*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_th*) ; 
 int /*<<< orphan*/  intel_th_ida ; 
 int /*<<< orphan*/  intel_th_irq ; 
 int /*<<< orphan*/  intel_th_output_fops ; 
 int FUNC10 (struct intel_th*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_th*) ; 
 struct intel_th* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

struct intel_th *
FUNC16(struct device *dev, struct intel_th_drvdata *drvdata,
	       struct resource *devres, unsigned int ndevres)
{
	int err, r, nr_mmios = 0;
	struct intel_th *th;

	th = FUNC12(sizeof(*th), GFP_KERNEL);
	if (!th)
		return FUNC0(-ENOMEM);

	th->id = FUNC7(&intel_th_ida, 0, 0, GFP_KERNEL);
	if (th->id < 0) {
		err = th->id;
		goto err_alloc;
	}

	th->major = FUNC1(0, 0, TH_POSSIBLE_OUTPUTS,
				      "intel_th/output", &intel_th_output_fops);
	if (th->major < 0) {
		err = th->major;
		goto err_ida;
	}
	th->irq = -1;
	th->dev = dev;
	th->drvdata = drvdata;

	for (r = 0; r < ndevres; r++)
		switch (devres[r].flags & IORESOURCE_TYPE_BITS) {
		case IORESOURCE_MEM:
			th->resource[nr_mmios++] = devres[r];
			break;
		case IORESOURCE_IRQ:
			err = FUNC6(dev, devres[r].start,
					       intel_th_irq, IRQF_SHARED,
					       FUNC3(dev), th);
			if (err)
				goto err_chrdev;

			if (th->irq == -1)
				th->irq = devres[r].start;
			break;
		default:
			FUNC5(dev, "Unknown resource type %lx\n",
				 devres[r].flags);
			break;
		}

	th->num_resources = nr_mmios;

	FUNC4(dev, th);

	FUNC14(dev);
	FUNC15(dev);
	FUNC13(dev);

	err = FUNC10(th);
	if (err) {
		/* free the subdevices and undo everything */
		FUNC9(th);
		return FUNC0(err);
	}

	return th;

err_chrdev:
	FUNC2(th->major, 0, TH_POSSIBLE_OUTPUTS,
			    "intel_th/output");

err_ida:
	FUNC8(&intel_th_ida, th->id);

err_alloc:
	FUNC11(th);

	return FUNC0(err);
}