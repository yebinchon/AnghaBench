
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct etnaviv_pm_domain_meta {scalar_t__ nr_domains; struct etnaviv_pm_domain* domains; } ;
struct etnaviv_pm_domain {scalar_t__ nr_signals; } ;
struct drm_etnaviv_gem_submit_pmr {scalar_t__ domain; scalar_t__ signal; } ;


 int EINVAL ;
 struct etnaviv_pm_domain_meta* doms_meta ;

int etnaviv_pm_req_validate(const struct drm_etnaviv_gem_submit_pmr *r,
 u32 exec_state)
{
 const struct etnaviv_pm_domain_meta *meta = &doms_meta[exec_state];
 const struct etnaviv_pm_domain *dom;

 if (r->domain >= meta->nr_domains)
  return -EINVAL;

 dom = meta->domains + r->domain;

 if (r->signal >= dom->nr_signals)
  return -EINVAL;

 return 0;
}
