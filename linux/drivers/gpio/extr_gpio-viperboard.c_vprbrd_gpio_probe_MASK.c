#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* label; int base; int ngpio; int can_sleep; TYPE_1__* parent; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get; int /*<<< orphan*/  set; void* owner; } ;
struct vprbrd_gpio {TYPE_3__ gpiob; TYPE_3__ gpioa; struct vprbrd* vb; } ;
struct vprbrd {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct vprbrd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_3__*,struct vprbrd_gpio*) ; 
 struct vprbrd_gpio* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct vprbrd_gpio*) ; 
 int /*<<< orphan*/  vprbrd_gpioa_direction_input ; 
 int /*<<< orphan*/  vprbrd_gpioa_direction_output ; 
 int /*<<< orphan*/  vprbrd_gpioa_get ; 
 int /*<<< orphan*/  vprbrd_gpioa_set ; 
 int /*<<< orphan*/  vprbrd_gpiob_direction_input ; 
 int /*<<< orphan*/  vprbrd_gpiob_direction_output ; 
 int /*<<< orphan*/  vprbrd_gpiob_get ; 
 int /*<<< orphan*/  vprbrd_gpiob_set ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct vprbrd *vb = FUNC1(pdev->dev.parent);
	struct vprbrd_gpio *vb_gpio;
	int ret;

	vb_gpio = FUNC3(&pdev->dev, sizeof(*vb_gpio), GFP_KERNEL);
	if (vb_gpio == NULL)
		return -ENOMEM;

	vb_gpio->vb = vb;
	/* registering gpio a */
	vb_gpio->gpioa.label = "viperboard gpio a";
	vb_gpio->gpioa.parent = &pdev->dev;
	vb_gpio->gpioa.owner = THIS_MODULE;
	vb_gpio->gpioa.base = -1;
	vb_gpio->gpioa.ngpio = 16;
	vb_gpio->gpioa.can_sleep = true;
	vb_gpio->gpioa.set = vprbrd_gpioa_set;
	vb_gpio->gpioa.get = vprbrd_gpioa_get;
	vb_gpio->gpioa.direction_input = vprbrd_gpioa_direction_input;
	vb_gpio->gpioa.direction_output = vprbrd_gpioa_direction_output;
	ret = FUNC2(&pdev->dev, &vb_gpio->gpioa, vb_gpio);
	if (ret < 0) {
		FUNC0(vb_gpio->gpioa.parent, "could not add gpio a");
		return ret;
	}

	/* registering gpio b */
	vb_gpio->gpiob.label = "viperboard gpio b";
	vb_gpio->gpiob.parent = &pdev->dev;
	vb_gpio->gpiob.owner = THIS_MODULE;
	vb_gpio->gpiob.base = -1;
	vb_gpio->gpiob.ngpio = 16;
	vb_gpio->gpiob.can_sleep = true;
	vb_gpio->gpiob.set = vprbrd_gpiob_set;
	vb_gpio->gpiob.get = vprbrd_gpiob_get;
	vb_gpio->gpiob.direction_input = vprbrd_gpiob_direction_input;
	vb_gpio->gpiob.direction_output = vprbrd_gpiob_direction_output;
	ret = FUNC2(&pdev->dev, &vb_gpio->gpiob, vb_gpio);
	if (ret < 0) {
		FUNC0(vb_gpio->gpiob.parent, "could not add gpio b");
		return ret;
	}

	FUNC4(pdev, vb_gpio);

	return ret;
}