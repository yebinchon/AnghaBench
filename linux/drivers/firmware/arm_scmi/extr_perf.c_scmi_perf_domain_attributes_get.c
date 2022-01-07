
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {struct scmi_msg_resp_perf_domain_attributes* buf; } ;
struct TYPE_3__ {int buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_msg_resp_perf_domain_attributes {int name; int sustained_perf_level; int sustained_freq_khz; int flags; } ;
struct scmi_handle {int dummy; } ;
struct perf_dom_info {int sustained_freq_khz; int sustained_perf_level; int mult_factor; int name; int perf_fastchannels; int perf_level_notify; int perf_limit_notify; int set_perf; int set_limits; } ;
typedef int domain ;


 int PERF_DOMAIN_ATTRIBUTES ;
 int SCMI_MAX_STR_SIZE ;
 int SCMI_PROTOCOL_PERF ;
 int SUPPORTS_PERF_FASTCHANNELS (void*) ;
 int SUPPORTS_PERF_LEVEL_NOTIFY (void*) ;
 int SUPPORTS_PERF_LIMIT_NOTIFY (void*) ;
 int SUPPORTS_SET_LIMITS (void*) ;
 int SUPPORTS_SET_PERF_LVL (void*) ;
 void* le32_to_cpu (int ) ;
 int put_unaligned_le32 (void*,int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int
scmi_perf_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
    struct perf_dom_info *dom_info)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_msg_resp_perf_domain_attributes *attr;

 ret = scmi_xfer_get_init(handle, PERF_DOMAIN_ATTRIBUTES,
     SCMI_PROTOCOL_PERF, sizeof(domain),
     sizeof(*attr), &t);
 if (ret)
  return ret;

 put_unaligned_le32(domain, t->tx.buf);
 attr = t->rx.buf;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  u32 flags = le32_to_cpu(attr->flags);

  dom_info->set_limits = SUPPORTS_SET_LIMITS(flags);
  dom_info->set_perf = SUPPORTS_SET_PERF_LVL(flags);
  dom_info->perf_limit_notify = SUPPORTS_PERF_LIMIT_NOTIFY(flags);
  dom_info->perf_level_notify = SUPPORTS_PERF_LEVEL_NOTIFY(flags);
  dom_info->perf_fastchannels = SUPPORTS_PERF_FASTCHANNELS(flags);
  dom_info->sustained_freq_khz =
     le32_to_cpu(attr->sustained_freq_khz);
  dom_info->sustained_perf_level =
     le32_to_cpu(attr->sustained_perf_level);
  if (!dom_info->sustained_freq_khz ||
      !dom_info->sustained_perf_level)

   dom_info->mult_factor = 1000;
  else
   dom_info->mult_factor =
     (dom_info->sustained_freq_khz * 1000) /
     dom_info->sustained_perf_level;
  strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
 }

 scmi_xfer_put(handle, t);
 return ret;
}
