
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int scmi_pd_power (struct generic_pm_domain*,int) ;

__attribute__((used)) static int scmi_pd_power_off(struct generic_pm_domain *domain)
{
 return scmi_pd_power(domain, 0);
}
