
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_revision_info {char* sub_vendor_id; char* vendor_id; } ;
struct scmi_handle {struct scmi_revision_info* version; } ;


 int ARRAY_SIZE (char*) ;
 int BASE_DISCOVER_SUB_VENDOR ;
 int BASE_DISCOVER_VENDOR ;
 int SCMI_PROTOCOL_BASE ;
 int memcpy (char*,int ,int) ;
 int scmi_do_xfer (struct scmi_handle const*,struct scmi_xfer*) ;
 int scmi_xfer_get_init (struct scmi_handle const*,int ,int ,int ,int,struct scmi_xfer**) ;
 int scmi_xfer_put (struct scmi_handle const*,struct scmi_xfer*) ;

__attribute__((used)) static int
scmi_base_vendor_id_get(const struct scmi_handle *handle, bool sub_vendor)
{
 u8 cmd;
 int ret, size;
 char *vendor_id;
 struct scmi_xfer *t;
 struct scmi_revision_info *rev = handle->version;

 if (sub_vendor) {
  cmd = BASE_DISCOVER_SUB_VENDOR;
  vendor_id = rev->sub_vendor_id;
  size = ARRAY_SIZE(rev->sub_vendor_id);
 } else {
  cmd = BASE_DISCOVER_VENDOR;
  vendor_id = rev->vendor_id;
  size = ARRAY_SIZE(rev->vendor_id);
 }

 ret = scmi_xfer_get_init(handle, cmd, SCMI_PROTOCOL_BASE, 0, size, &t);
 if (ret)
  return ret;

 ret = scmi_do_xfer(handle, t);
 if (!ret)
  memcpy(vendor_id, t->rx.buf, size);

 scmi_xfer_put(handle, t);

 return ret;
}
