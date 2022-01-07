
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_revision_info {int impl_ver; } ;
struct scmi_handle {struct scmi_revision_info* version; } ;
typedef int __le32 ;


 int BASE_DISCOVER_IMPLEMENT_VERSION ;
 int SCMI_PROTOCOL_BASE ;
 int le32_to_cpu (int ) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int
scmi_base_implementation_version_get(const struct scmi_handle *handle)
{
 int ret;
 __le32 *impl_ver;
 struct scmi_xfer *t;
 struct scmi_revision_info *rev = handle->version;

 ret = scmi_xfer_get_init(handle, BASE_DISCOVER_IMPLEMENT_VERSION,
     SCMI_PROTOCOL_BASE, 0, sizeof(*impl_ver), &t);
 if (ret)
  return ret;

 ret = scmi_do_xfer(handle, t);
 if (!ret) {
  impl_ver = t->rx.buf;
  rev->impl_ver = le32_to_cpu(*impl_ver);
 }

 scmi_xfer_put(handle, t);

 return ret;
}
