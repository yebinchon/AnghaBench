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
struct of_phandle_args {scalar_t__* args; } ;
struct generic_pm_domain {int dummy; } ;
struct imx_sc_pm_domain {scalar_t__ rsrc; struct generic_pm_domain pd; } ;
struct genpd_onecell_data {unsigned int num_domains; int /*<<< orphan*/ * domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct generic_pm_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 struct imx_sc_pm_domain* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct generic_pm_domain *FUNC2(struct of_phandle_args *spec,
						  void *data)
{
	struct generic_pm_domain *domain = FUNC0(-ENOENT);
	struct genpd_onecell_data *pd_data = data;
	unsigned int i;

	for (i = 0; i < pd_data->num_domains; i++) {
		struct imx_sc_pm_domain *sc_pd;

		sc_pd = FUNC1(pd_data->domains[i]);
		if (sc_pd->rsrc == spec->args[0]) {
			domain = &sc_pd->pd;
			break;
		}
	}

	return domain;
}