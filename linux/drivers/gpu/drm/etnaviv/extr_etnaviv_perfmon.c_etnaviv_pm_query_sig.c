
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_pm_signal {int name; } ;
struct etnaviv_pm_domain_meta {scalar_t__ nr_domains; struct etnaviv_pm_domain* domains; } ;
struct etnaviv_pm_domain {size_t nr_signals; struct etnaviv_pm_signal* signal; } ;
struct etnaviv_gpu {int dummy; } ;
struct drm_etnaviv_pm_signal {size_t pipe; scalar_t__ domain; size_t iter; size_t id; int name; } ;


 int EINVAL ;
 struct etnaviv_pm_domain_meta* doms_meta ;
 int strncpy (int ,int ,int) ;

int etnaviv_pm_query_sig(struct etnaviv_gpu *gpu,
 struct drm_etnaviv_pm_signal *signal)
{
 const struct etnaviv_pm_domain_meta *meta = &doms_meta[signal->pipe];
 const struct etnaviv_pm_domain *dom;
 const struct etnaviv_pm_signal *sig;

 if (signal->domain >= meta->nr_domains)
  return -EINVAL;

 dom = meta->domains + signal->domain;

 if (signal->iter >= dom->nr_signals)
  return -EINVAL;

 sig = &dom->signal[signal->iter];

 signal->id = signal->iter;
 strncpy(signal->name, sig->name, sizeof(signal->name));

 signal->iter++;
 if (signal->iter == dom->nr_signals)
  signal->iter = 0xffff;

 return 0;
}
