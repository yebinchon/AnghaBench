
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_perf_info {int num_domains; struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; int * perf_ops; int dev; } ;
struct perf_dom_info {int fc_info; scalar_t__ perf_fastchannels; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PROTOCOL_REV_MAJOR (int ) ;
 int PROTOCOL_REV_MINOR (int ) ;
 int SCMI_PROTOCOL_PERF ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct perf_dom_info* devm_kcalloc (int ,int,int,int ) ;
 struct scmi_perf_info* devm_kzalloc (int ,int,int ) ;
 int perf_ops ;
 int scmi_perf_attributes_get (struct scmi_handle*,struct scmi_perf_info*) ;
 int scmi_perf_describe_levels_get (struct scmi_handle*,int,struct perf_dom_info*) ;
 int scmi_perf_domain_attributes_get (struct scmi_handle*,int,struct perf_dom_info*) ;
 int scmi_perf_domain_init_fc (struct scmi_handle*,int,int *) ;
 int scmi_version_get (struct scmi_handle*,int ,int *) ;

__attribute__((used)) static int scmi_perf_protocol_init(struct scmi_handle *handle)
{
 int domain;
 u32 version;
 struct scmi_perf_info *pinfo;

 scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);

 dev_dbg(handle->dev, "Performance Version %d.%d\n",
  PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));

 pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
 if (!pinfo)
  return -ENOMEM;

 scmi_perf_attributes_get(handle, pinfo);

 pinfo->dom_info = devm_kcalloc(handle->dev, pinfo->num_domains,
           sizeof(*pinfo->dom_info), GFP_KERNEL);
 if (!pinfo->dom_info)
  return -ENOMEM;

 for (domain = 0; domain < pinfo->num_domains; domain++) {
  struct perf_dom_info *dom = pinfo->dom_info + domain;

  scmi_perf_domain_attributes_get(handle, domain, dom);
  scmi_perf_describe_levels_get(handle, domain, dom);

  if (dom->perf_fastchannels)
   scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
 }

 handle->perf_ops = &perf_ops;
 handle->perf_priv = pinfo;

 return 0;
}
