
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_pm_domain_meta {scalar_t__ nr_domains; struct etnaviv_pm_domain* domains; } ;
struct etnaviv_pm_domain {int name; int nr_signals; } ;
struct etnaviv_gpu {int dummy; } ;
struct drm_etnaviv_pm_domain {size_t pipe; scalar_t__ iter; int id; int name; int nr_signals; } ;


 int EINVAL ;
 struct etnaviv_pm_domain_meta* doms_meta ;
 int strncpy (int ,int ,int) ;

int etnaviv_pm_query_dom(struct etnaviv_gpu *gpu,
 struct drm_etnaviv_pm_domain *domain)
{
 const struct etnaviv_pm_domain_meta *meta = &doms_meta[domain->pipe];
 const struct etnaviv_pm_domain *dom;

 if (domain->iter >= meta->nr_domains)
  return -EINVAL;

 dom = meta->domains + domain->iter;

 domain->id = domain->iter;
 domain->nr_signals = dom->nr_signals;
 strncpy(domain->name, dom->name, sizeof(domain->name));

 domain->iter++;
 if (domain->iter == meta->nr_domains)
  domain->iter = 0xff;

 return 0;
}
