
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scmi_perf_info {struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; } ;
struct perf_dom_info {TYPE_1__* fc_info; } ;
struct TYPE_2__ {int limit_set_db; scalar_t__ limit_set_addr; } ;


 int iowrite32 (int,scalar_t__) ;
 int scmi_perf_fc_ring_db (int ) ;
 int scmi_perf_mb_limits_set (struct scmi_handle const*,int,int,int) ;

__attribute__((used)) static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
    u32 max_perf, u32 min_perf)
{
 struct scmi_perf_info *pi = handle->perf_priv;
 struct perf_dom_info *dom = pi->dom_info + domain;

 if (dom->fc_info && dom->fc_info->limit_set_addr) {
  iowrite32(max_perf, dom->fc_info->limit_set_addr);
  iowrite32(min_perf, dom->fc_info->limit_set_addr + 4);
  scmi_perf_fc_ring_db(dom->fc_info->limit_set_db);
  return 0;
 }

 return scmi_perf_mb_limits_set(handle, domain, max_perf, min_perf);
}
