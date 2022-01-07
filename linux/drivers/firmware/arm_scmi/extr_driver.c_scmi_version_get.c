
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_handle {int dummy; } ;
typedef int __le32 ;


 int PROTOCOL_VERSION ;
 int le32_to_cpu (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

int scmi_version_get(const struct scmi_handle *handle, u8 protocol,
       u32 *version)
{
 int ret;
 __le32 *rev_info;
 struct scmi_xfer *t;

 ret = scmi_xfer_get_init(handle, PROTOCOL_VERSION, protocol, 0,
     sizeof(*version), &t);
 if (ret)
  return ret;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  rev_info = t->rx.buf;
  *version = le32_to_cpu(*rev_info);
 }

 scmi_xfer_put(handle, t);
 return ret;
}
