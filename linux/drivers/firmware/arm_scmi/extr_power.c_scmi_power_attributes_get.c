
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {struct scmi_msg_resp_power_attributes* buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_power_info {int stats_addr; int stats_size; int num_domains; } ;
struct scmi_msg_resp_power_attributes {int stats_size; int stats_addr_high; int stats_addr_low; int num_domains; } ;
struct scmi_handle {int dummy; } ;


 int PROTOCOL_ATTRIBUTES ;
 int SCMI_PROTOCOL_POWER ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_power_attributes_get(const struct scmi_handle *handle,
         struct scmi_power_info *pi)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_msg_resp_power_attributes *attr;

 ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
     SCMI_PROTOCOL_POWER, 0, sizeof(*attr), &t);
 if (ret)
  return ret;

 attr = t->rx.buf;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  pi->num_domains = le16_to_cpu(attr->num_domains);
  pi->stats_addr = le32_to_cpu(attr->stats_addr_low) |
    (u64)le32_to_cpu(attr->stats_addr_high) << 32;
  pi->stats_size = le32_to_cpu(attr->stats_size);
 }

 scmi_xfer_put(handle, t);
 return ret;
}
