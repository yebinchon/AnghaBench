
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct generic_pm_domain {int name; } ;
struct imx_sc_pm_domain {struct generic_pm_domain pd; } ;
struct imx_sc_pd_soc {int num_ranges; struct imx_sc_pd_range* pd_ranges; } ;
struct imx_sc_pd_range {int num; } ;
struct genpd_onecell_data {int xlate; scalar_t__ num_domains; struct generic_pm_domain** domains; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct imx_sc_pm_domain*) ;
 int dev_dbg (struct device*,char*,int ) ;
 struct generic_pm_domain** devm_kcalloc (struct device*,scalar_t__,int,int ) ;
 struct genpd_onecell_data* devm_kzalloc (struct device*,int,int ) ;
 struct imx_sc_pm_domain* imx_scu_add_pm_domain (struct device*,int,struct imx_sc_pd_range const*) ;
 int imx_scu_pd_xlate ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;

__attribute__((used)) static int imx_scu_init_pm_domains(struct device *dev,
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

 domains = devm_kcalloc(dev, count, sizeof(*domains), GFP_KERNEL);
 if (!domains)
  return -ENOMEM;

 pd_data = devm_kzalloc(dev, sizeof(*pd_data), GFP_KERNEL);
 if (!pd_data)
  return -ENOMEM;

 count = 0;
 for (i = 0; i < pd_soc->num_ranges; i++) {
  for (j = 0; j < pd_ranges[i].num; j++) {
   sc_pd = imx_scu_add_pm_domain(dev, j, &pd_ranges[i]);
   if (IS_ERR_OR_NULL(sc_pd))
    continue;

   domains[count++] = &sc_pd->pd;
   dev_dbg(dev, "added power domain %s\n", sc_pd->pd.name);
  }
 }

 pd_data->domains = domains;
 pd_data->num_domains = count;
 pd_data->xlate = imx_scu_pd_xlate;

 of_genpd_add_provider_onecell(dev->of_node, pd_data);

 return 0;
}
