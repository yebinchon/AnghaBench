
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_pm_domain {int dummy; } ;
struct generic_pm_domain {int dummy; } ;


 int scpi_pd_power (struct scpi_pm_domain*,int) ;
 struct scpi_pm_domain* to_scpi_pd (struct generic_pm_domain*) ;

__attribute__((used)) static int scpi_pd_power_off(struct generic_pm_domain *domain)
{
 struct scpi_pm_domain *pd = to_scpi_pd(domain);

 return scpi_pd_power(pd, 0);
}
