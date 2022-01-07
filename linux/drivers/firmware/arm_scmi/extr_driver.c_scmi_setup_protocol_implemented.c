
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scmi_info {int * protocols_imp; } ;
struct scmi_handle {int dummy; } ;


 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;

void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
         u8 *prot_imp)
{
 struct scmi_info *info = handle_to_scmi_info(handle);

 info->protocols_imp = prot_imp;
}
