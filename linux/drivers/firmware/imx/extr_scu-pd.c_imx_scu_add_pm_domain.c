
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int power_on; int power_off; } ;
struct imx_sc_pm_domain {scalar_t__ rsrc; int name; TYPE_1__ pd; } ;
struct imx_sc_pd_range {scalar_t__ rsrc; char* name; scalar_t__ start_from; scalar_t__ postfix; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct imx_sc_pm_domain* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IMX_SC_R_LAST ;
 int dev_warn (struct device*,char*,int ,scalar_t__) ;
 int devm_kfree (struct device*,struct imx_sc_pm_domain*) ;
 struct imx_sc_pm_domain* devm_kzalloc (struct device*,int,int ) ;
 int imx_sc_pd_power_off ;
 int imx_sc_pd_power_on ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int snprintf (int ,int,char*,char*,...) ;

__attribute__((used)) static struct imx_sc_pm_domain *
imx_scu_add_pm_domain(struct device *dev, int idx,
        const struct imx_sc_pd_range *pd_ranges)
{
 struct imx_sc_pm_domain *sc_pd;
 int ret;

 sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL);
 if (!sc_pd)
  return ERR_PTR(-ENOMEM);

 sc_pd->rsrc = pd_ranges->rsrc + idx;
 sc_pd->pd.power_off = imx_sc_pd_power_off;
 sc_pd->pd.power_on = imx_sc_pd_power_on;

 if (pd_ranges->postfix)
  snprintf(sc_pd->name, sizeof(sc_pd->name),
    "%s%i", pd_ranges->name, pd_ranges->start_from + idx);
 else
  snprintf(sc_pd->name, sizeof(sc_pd->name),
    "%s", pd_ranges->name);

 sc_pd->pd.name = sc_pd->name;

 if (sc_pd->rsrc >= IMX_SC_R_LAST) {
  dev_warn(dev, "invalid pd %s rsrc id %d found",
    sc_pd->name, sc_pd->rsrc);

  devm_kfree(dev, sc_pd);
  return ((void*)0);
 }

 ret = pm_genpd_init(&sc_pd->pd, ((void*)0), 1);
 if (ret) {
  dev_warn(dev, "failed to init pd %s rsrc id %d",
    sc_pd->name, sc_pd->rsrc);
  devm_kfree(dev, sc_pd);
  return ((void*)0);
 }

 return sc_pd;
}
