
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {scalar_t__* args; } ;
struct generic_pm_domain {int dummy; } ;
struct imx_sc_pm_domain {scalar_t__ rsrc; struct generic_pm_domain pd; } ;
struct genpd_onecell_data {unsigned int num_domains; int * domains; } ;


 int ENOENT ;
 struct generic_pm_domain* ERR_PTR (int ) ;
 struct imx_sc_pm_domain* to_imx_sc_pd (int ) ;

__attribute__((used)) static struct generic_pm_domain *imx_scu_pd_xlate(struct of_phandle_args *spec,
        void *data)
{
 struct generic_pm_domain *domain = ERR_PTR(-ENOENT);
 struct genpd_onecell_data *pd_data = data;
 unsigned int i;

 for (i = 0; i < pd_data->num_domains; i++) {
  struct imx_sc_pm_domain *sc_pd;

  sc_pd = to_imx_sc_pd(pd_data->domains[i]);
  if (sc_pd->rsrc == spec->args[0]) {
   domain = &sc_pd->pd;
   break;
  }
 }

 return domain;
}
