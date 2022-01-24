#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_devfreq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct devfreq {TYPE_1__ dev; } ;

/* Variables and functions */
#define  DEVFREQ_GOV_RESUME 131 
#define  DEVFREQ_GOV_START 130 
#define  DEVFREQ_GOV_STOP 129 
#define  DEVFREQ_GOV_SUSPEND 128 
 struct tegra_devfreq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_devfreq*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_devfreq*) ; 

__attribute__((used)) static int FUNC7(struct devfreq *devfreq,
					unsigned int event, void *data)
{
	struct tegra_devfreq *tegra = FUNC0(devfreq->dev.parent);

	switch (event) {
	case DEVFREQ_GOV_START:
		FUNC2(devfreq);
		FUNC5(tegra);
		break;

	case DEVFREQ_GOV_STOP:
		FUNC6(tegra);
		FUNC3(devfreq);
		break;

	case DEVFREQ_GOV_SUSPEND:
		FUNC6(tegra);
		FUNC4(devfreq);
		break;

	case DEVFREQ_GOV_RESUME:
		FUNC1(devfreq);
		FUNC5(tegra);
		break;
	}

	return 0;
}