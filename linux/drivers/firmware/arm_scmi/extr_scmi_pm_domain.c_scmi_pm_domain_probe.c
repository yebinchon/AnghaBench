
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct generic_pm_domain {int power_on; int power_off; int name; } ;
struct scmi_pm_domain {int domain; struct generic_pm_domain genpd; int name; struct scmi_handle const* handle; } ;
struct scmi_handle {TYPE_1__* power_ops; } ;
struct device {struct device_node* of_node; } ;
struct scmi_device {struct scmi_handle* handle; struct device dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int (* num_domains_get ) (struct scmi_handle const*) ;scalar_t__ (* state_get ) (struct scmi_handle const*,int,scalar_t__*) ;int (* name_get ) (struct scmi_handle const*,int) ;} ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SCMI_POWER_STATE_GENERIC_OFF ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct genpd_onecell_data* devm_kzalloc (struct device*,int,int ) ;
 int of_genpd_add_provider_onecell (struct device_node*,struct genpd_onecell_data*) ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int scmi_pd_power_off ;
 int scmi_pd_power_on ;
 int stub1 (struct scmi_handle const*) ;
 int stub2 (struct scmi_handle const*,int) ;
 scalar_t__ stub3 (struct scmi_handle const*,int,scalar_t__*) ;

__attribute__((used)) static int scmi_pm_domain_probe(struct scmi_device *sdev)
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
  dev_err(dev, "number of domains not found\n");
  return num_domains;
 }

 scmi_pd = devm_kcalloc(dev, num_domains, sizeof(*scmi_pd), GFP_KERNEL);
 if (!scmi_pd)
  return -ENOMEM;

 scmi_pd_data = devm_kzalloc(dev, sizeof(*scmi_pd_data), GFP_KERNEL);
 if (!scmi_pd_data)
  return -ENOMEM;

 domains = devm_kcalloc(dev, num_domains, sizeof(*domains), GFP_KERNEL);
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
   dev_warn(dev, "failed to get state for domain %d\n", i);
   continue;
  }

  pm_genpd_init(&scmi_pd->genpd, ((void*)0),
         state == SCMI_POWER_STATE_GENERIC_OFF);
 }

 scmi_pd_data->domains = domains;
 scmi_pd_data->num_domains = num_domains;

 of_genpd_add_provider_onecell(np, scmi_pd_data);

 return 0;
}
