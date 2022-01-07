
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_reset_info {struct reset_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_reset_info* reset_priv; } ;
struct reset_dom_info {char* name; } ;



__attribute__((used)) static char *scmi_reset_name_get(const struct scmi_handle *handle, u32 domain)
{
 struct scmi_reset_info *pi = handle->reset_priv;
 struct reset_dom_info *dom = pi->dom_info + domain;

 return dom->name;
}
