
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct scmi_msg_resp_clock_protocol_attributes* buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_msg_resp_clock_protocol_attributes {int max_async_req; int num_clocks; } ;
struct scmi_handle {int dummy; } ;
struct clock_info {int max_async_req; int num_clocks; } ;


 int PROTOCOL_ATTRIBUTES ;
 int SCMI_PROTOCOL_CLOCK ;
 int le16_to_cpu (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_clock_protocol_attributes_get(const struct scmi_handle *handle,
           struct clock_info *ci)
{
 int ret;
 struct scmi_xfer *t;
 struct scmi_msg_resp_clock_protocol_attributes *attr;

 ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
     SCMI_PROTOCOL_CLOCK, 0, sizeof(*attr), &t);
 if (ret)
  return ret;

 attr = t->rx.buf;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  ci->num_clocks = le16_to_cpu(attr->num_clocks);
  ci->max_async_req = attr->max_async_req;
 }

 scmi_xfer_put(handle, t);
 return ret;
}
