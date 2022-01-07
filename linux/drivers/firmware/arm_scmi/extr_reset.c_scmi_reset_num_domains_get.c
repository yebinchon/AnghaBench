
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_reset_info {int num_domains; } ;
struct scmi_handle {struct scmi_reset_info* reset_priv; } ;



__attribute__((used)) static int scmi_reset_num_domains_get(const struct scmi_handle *handle)
{
 struct scmi_reset_info *pi = handle->reset_priv;

 return pi->num_domains;
}
