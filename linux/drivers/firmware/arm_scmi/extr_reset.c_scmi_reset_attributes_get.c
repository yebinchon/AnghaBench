
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_reset_info {int num_domains; } ;
struct scmi_handle {int dummy; } ;
typedef int attr ;


 int NUM_RESET_DOMAIN_MASK ;
 int PROTOCOL_ATTRIBUTES ;
 int SCMI_PROTOCOL_RESET ;
 int get_unaligned_le32 (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int scmi_reset_attributes_get(const struct scmi_handle *handle,
         struct scmi_reset_info *pi)
{
 int ret;
 struct scmi_xfer *t;
 u32 attr;

 ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
     SCMI_PROTOCOL_RESET, 0, sizeof(attr), &t);
 if (ret)
  return ret;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  attr = get_unaligned_le32(t->rx.buf);
  pi->num_domains = attr & NUM_RESET_DOMAIN_MASK;
 }

 scmi_xfer_put(handle, t);
 return ret;
}
