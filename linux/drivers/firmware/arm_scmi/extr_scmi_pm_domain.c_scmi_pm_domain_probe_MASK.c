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
typedef  scalar_t__ u32 ;
struct generic_pm_domain {int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; int /*<<< orphan*/  name; } ;
struct scmi_pm_domain {int domain; struct generic_pm_domain genpd; int /*<<< orphan*/  name; struct scmi_handle const* handle; } ;
struct scmi_handle {TYPE_1__* power_ops; } ;
struct device {struct device_node* of_node; } ;
struct scmi_device {struct scmi_handle* handle; struct device dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int (* num_domains_get ) (struct scmi_handle const*) ;scalar_t__ (* state_get ) (struct scmi_handle const*,int,scalar_t__*) ;int /*<<< orphan*/  (* name_get ) (struct scmi_handle const*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SCMI_POWER_STATE_GENERIC_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 void* FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct genpd_onecell_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,struct genpd_onecell_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct generic_pm_domain*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  scmi_pd_power_off ; 
 int /*<<< orphan*/  scmi_pd_power_on ; 
 int FUNC6 (struct scmi_handle const*) ; 
 int /*<<< orphan*/  FUNC7 (struct scmi_handle const*,int) ; 
 scalar_t__ FUNC8 (struct scmi_handle const*,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct scmi_device *sdev)
{
	int num_domains, i;
	struct device *dev = &sdev->dev;
	struct device_node *np = dev->of_node;
	struct scmi_pm_domain *scmi_pd;
	struct genpd_onecell_data *scmi_pd_data;
	struct generic_pm_domain **domains;
	const struct scmi_handle *handle = sdev->handle;

	if (!handle || !handle->power_ops)
		return -ENODEV;

	num_domains = handle->power_ops->num_domains_get(handle);
	if (num_domains < 0) {
		FUNC0(dev, "number of domains not found\n");
		return num_domains;
	}

	scmi_pd = FUNC2(dev, num_domains, sizeof(*scmi_pd), GFP_KERNEL);
	if (!scmi_pd)
		return -ENOMEM;

	scmi_pd_data = FUNC3(dev, sizeof(*scmi_pd_data), GFP_KERNEL);
	if (!scmi_pd_data)
		return -ENOMEM;

	domains = FUNC2(dev, num_domains, sizeof(*domains), GFP_KERNEL);
	if (!domains)
		return -ENOMEM;

	for (i = 0; i < num_domains; i++, scmi_pd++) {
		u32 state;

		domains[i] = &scmi_pd->genpd;

		scmi_pd->domain = i;
		scmi_pd->handle = handle;
		scmi_pd->name = handle->power_ops->name_get(handle, i);
		scmi_pd->genpd.name = scmi_pd->name;
		scmi_pd->genpd.power_off = scmi_pd_power_off;
		scmi_pd->genpd.power_on = scmi_pd_power_on;

		if (handle->power_ops->state_get(handle, i, &state)) {
			FUNC1(dev, "failed to get state for domain %d\n", i);
			continue;
		}

		FUNC5(&scmi_pd->genpd, NULL,
			      state == SCMI_POWER_STATE_GENERIC_OFF);
	}

	scmi_pd_data->domains = domains;
	scmi_pd_data->num_domains = num_domains;

	FUNC4(np, scmi_pd_data);

	return 0;
}