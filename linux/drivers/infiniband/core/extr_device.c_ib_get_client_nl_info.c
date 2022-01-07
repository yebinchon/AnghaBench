
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct ib_client_nl_info {int cdev; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ WARN_ON (int) ;
 int __ib_get_client_nl_info (struct ib_device*,char const*,struct ib_client_nl_info*) ;
 int __ib_get_global_client_nl_info (char const*,struct ib_client_nl_info*) ;
 int request_module (char*,char const*) ;

int ib_get_client_nl_info(struct ib_device *ibdev, const char *client_name,
     struct ib_client_nl_info *res)
{
 int ret;

 if (ibdev)
  ret = __ib_get_client_nl_info(ibdev, client_name, res);
 else
  ret = __ib_get_global_client_nl_info(client_name, res);
 if (ret) {
  if (ret == -ENOENT)
   return -EOPNOTSUPP;
  return ret;
 }

 if (WARN_ON(!res->cdev))
  return -EINVAL;
 return 0;
}
