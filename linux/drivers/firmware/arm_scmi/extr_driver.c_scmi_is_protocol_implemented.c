
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct scmi_info {scalar_t__* protocols_imp; } ;
struct scmi_handle {int dummy; } ;


 int MAX_PROTOCOLS_IMP ;
 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;

__attribute__((used)) static bool
scmi_is_protocol_implemented(const struct scmi_handle *handle, u8 prot_id)
{
 int i;
 struct scmi_info *info = handle_to_scmi_info(handle);

 if (!info->protocols_imp)
  return 0;

 for (i = 0; i < MAX_PROTOCOLS_IMP; i++)
  if (info->protocols_imp[i] == prot_id)
   return 1;
 return 0;
}
