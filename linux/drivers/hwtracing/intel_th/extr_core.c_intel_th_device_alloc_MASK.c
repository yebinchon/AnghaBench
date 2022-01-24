#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; struct device* parent; int /*<<< orphan*/  type; int /*<<< orphan*/ * bus; } ;
struct intel_th_device {int id; unsigned int type; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct intel_th {int /*<<< orphan*/  id; struct device* dev; TYPE_1__* hub; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INTEL_TH_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_th_bus ; 
 int /*<<< orphan*/ * intel_th_device_type ; 
 struct intel_th_device* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static struct intel_th_device *
FUNC6(struct intel_th *th, unsigned int type, const char *name,
		      int id)
{
	struct device *parent;
	struct intel_th_device *thdev;

	if (type == INTEL_TH_OUTPUT)
		parent = &th->hub->dev;
	else
		parent = th->dev;

	thdev = FUNC3(sizeof(*thdev) + FUNC5(name) + 1, GFP_KERNEL);
	if (!thdev)
		return NULL;

	thdev->id = id;
	thdev->type = type;

	FUNC4(thdev->name, name);
	FUNC1(&thdev->dev);
	thdev->dev.bus = &intel_th_bus;
	thdev->dev.type = intel_th_device_type[type];
	thdev->dev.parent = parent;
	thdev->dev.dma_mask = parent->dma_mask;
	thdev->dev.dma_parms = parent->dma_parms;
	FUNC2(&thdev->dev, parent->coherent_dma_mask);
	if (id >= 0)
		FUNC0(&thdev->dev, "%d-%s%d", th->id, name, id);
	else
		FUNC0(&thdev->dev, "%d-%s", th->id, name);

	return thdev;
}