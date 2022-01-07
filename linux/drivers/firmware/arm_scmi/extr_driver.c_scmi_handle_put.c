
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_info {int users; } ;
struct scmi_handle {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scmi_list_mutex ;

int scmi_handle_put(const struct scmi_handle *handle)
{
 struct scmi_info *info;

 if (!handle)
  return -EINVAL;

 info = handle_to_scmi_info(handle);
 mutex_lock(&scmi_list_mutex);
 if (!WARN_ON(!info->users))
  info->users--;
 mutex_unlock(&scmi_list_mutex);

 return 0;
}
