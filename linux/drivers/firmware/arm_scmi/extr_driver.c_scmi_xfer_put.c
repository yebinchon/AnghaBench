
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_xfer {int dummy; } ;
struct scmi_info {int tx_minfo; } ;
struct scmi_handle {int dummy; } ;


 int __scmi_xfer_put (int *,struct scmi_xfer*) ;
 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;

void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
{
 struct scmi_info *info = handle_to_scmi_info(handle);

 __scmi_xfer_put(&info->tx_minfo, xfer);
}
