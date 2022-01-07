
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_handle {int dev; } ;
struct scmi_fc_info {int limit_get_addr; int limit_set_db; int limit_set_addr; int level_get_addr; int level_set_db; int level_set_addr; } ;


 int GFP_KERNEL ;
 int PERF_LEVEL_GET ;
 int PERF_LEVEL_SET ;
 int PERF_LIMITS_GET ;
 int PERF_LIMITS_SET ;
 struct scmi_fc_info* devm_kzalloc (int ,int,int ) ;
 int scmi_perf_domain_desc_fc (struct scmi_handle const*,int ,int ,int *,int *) ;

__attribute__((used)) static void scmi_perf_domain_init_fc(const struct scmi_handle *handle,
         u32 domain, struct scmi_fc_info **p_fc)
{
 struct scmi_fc_info *fc;

 fc = devm_kzalloc(handle->dev, sizeof(*fc), GFP_KERNEL);
 if (!fc)
  return;

 scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_SET,
     &fc->level_set_addr, &fc->level_set_db);
 scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_GET,
     &fc->level_get_addr, ((void*)0));
 scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_SET,
     &fc->limit_set_addr, &fc->limit_set_db);
 scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_GET,
     &fc->limit_get_addr, ((void*)0));
 *p_fc = fc;
}
