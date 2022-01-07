
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scmi_perf_info {struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; } ;
struct perf_dom_info {int opp_count; TYPE_1__* opp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int trans_latency_us; } ;


 int scmi_dev_domain_id (struct device*) ;

__attribute__((used)) static int scmi_dvfs_transition_latency_get(const struct scmi_handle *handle,
         struct device *dev)
{
 struct perf_dom_info *dom;
 struct scmi_perf_info *pi = handle->perf_priv;
 int domain = scmi_dev_domain_id(dev);

 if (domain < 0)
  return domain;

 dom = pi->dom_info + domain;

 return dom->opp[dom->opp_count - 1].trans_latency_us * 1000;
}
