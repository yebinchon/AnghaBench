
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_info {int users; } ;
struct ti_sci_handle {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ti_sci_handle const*) ;
 int PTR_ERR (struct ti_sci_handle const*) ;
 int WARN_ON (int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_handle const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ti_sci_list_mutex ;

int ti_sci_put_handle(const struct ti_sci_handle *handle)
{
 struct ti_sci_info *info;

 if (IS_ERR(handle))
  return PTR_ERR(handle);
 if (!handle)
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 mutex_lock(&ti_sci_list_mutex);
 if (!WARN_ON(!info->users))
  info->users--;
 mutex_unlock(&ti_sci_list_mutex);

 return 0;
}
