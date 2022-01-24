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
typedef  scalar_t__ u32 ;
struct generic_pm_domain {int /*<<< orphan*/  name; } ;
struct imx_sc_pm_domain {struct generic_pm_domain pd; } ;
struct imx_sc_pd_soc {int num_ranges; struct imx_sc_pd_range* pd_ranges; } ;
struct imx_sc_pd_range {int num; } ;
struct genpd_onecell_data {int /*<<< orphan*/  xlate; scalar_t__ num_domains; struct generic_pm_domain** domains; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct imx_sc_pm_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct generic_pm_domain** FUNC2 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct genpd_onecell_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct imx_sc_pm_domain* FUNC4 (struct device*,int,struct imx_sc_pd_range const*) ; 
 int /*<<< orphan*/  imx_scu_pd_xlate ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				    const struct imx_sc_pd_soc *pd_soc)
{
	const struct imx_sc_pd_range *pd_ranges = pd_soc->pd_ranges;
	struct generic_pm_domain **domains;
	struct genpd_onecell_data *pd_data;
	struct imx_sc_pm_domain *sc_pd;
	u32 count = 0;
	int i, j;

	for (i = 0; i < pd_soc->num_ranges; i++)
		count += pd_ranges[i].num;

	domains = FUNC2(dev, count, sizeof(*domains), GFP_KERNEL);
	if (!domains)
		return -ENOMEM;

	pd_data = FUNC3(dev, sizeof(*pd_data), GFP_KERNEL);
	if (!pd_data)
		return -ENOMEM;

	count = 0;
	for (i = 0; i < pd_soc->num_ranges; i++) {
		for (j = 0; j < pd_ranges[i].num; j++) {
			sc_pd = FUNC4(dev, j, &pd_ranges[i]);
			if (FUNC0(sc_pd))
				continue;

			domains[count++] = &sc_pd->pd;
			FUNC1(dev, "added power domain %s\n", sc_pd->pd.name);
		}
	}

	pd_data->domains = domains;
	pd_data->num_domains = count;
	pd_data->xlate = imx_scu_pd_xlate;

	FUNC5(dev->of_node, pd_data);

	return 0;
}