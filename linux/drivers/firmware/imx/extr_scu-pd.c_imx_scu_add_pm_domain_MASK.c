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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; } ;
struct imx_sc_pm_domain {scalar_t__ rsrc; int /*<<< orphan*/  name; TYPE_1__ pd; } ;
struct imx_sc_pd_range {scalar_t__ rsrc; char* name; scalar_t__ start_from; scalar_t__ postfix; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct imx_sc_pm_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMX_SC_R_LAST ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct imx_sc_pm_domain*) ; 
 struct imx_sc_pm_domain* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_sc_pd_power_off ; 
 int /*<<< orphan*/  imx_sc_pd_power_on ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,...) ; 

__attribute__((used)) static struct imx_sc_pm_domain *
FUNC6(struct device *dev, int idx,
		      const struct imx_sc_pd_range *pd_ranges)
{
	struct imx_sc_pm_domain *sc_pd;
	int ret;

	sc_pd = FUNC3(dev, sizeof(*sc_pd), GFP_KERNEL);
	if (!sc_pd)
		return FUNC0(-ENOMEM);

	sc_pd->rsrc = pd_ranges->rsrc + idx;
	sc_pd->pd.power_off = imx_sc_pd_power_off;
	sc_pd->pd.power_on = imx_sc_pd_power_on;

	if (pd_ranges->postfix)
		FUNC5(sc_pd->name, sizeof(sc_pd->name),
			 "%s%i", pd_ranges->name, pd_ranges->start_from + idx);
	else
		FUNC5(sc_pd->name, sizeof(sc_pd->name),
			 "%s", pd_ranges->name);

	sc_pd->pd.name = sc_pd->name;

	if (sc_pd->rsrc >= IMX_SC_R_LAST) {
		FUNC1(dev, "invalid pd %s rsrc id %d found",
			 sc_pd->name, sc_pd->rsrc);

		FUNC2(dev, sc_pd);
		return NULL;
	}

	ret = FUNC4(&sc_pd->pd, NULL, true);
	if (ret) {
		FUNC1(dev, "failed to init pd %s rsrc id %d",
			 sc_pd->name, sc_pd->rsrc);
		FUNC2(dev, sc_pd);
		return NULL;
	}

	return sc_pd;
}