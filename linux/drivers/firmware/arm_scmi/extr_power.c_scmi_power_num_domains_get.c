
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_power_info {int num_domains; } ;
struct scmi_handle {struct scmi_power_info* power_priv; } ;



__attribute__((used)) static int scmi_power_num_domains_get(const struct scmi_handle *handle)
{
 struct scmi_power_info *pi = handle->power_priv;

 return pi->num_domains;
}
