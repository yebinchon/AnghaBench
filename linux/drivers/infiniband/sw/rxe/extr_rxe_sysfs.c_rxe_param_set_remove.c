
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int intf ;


 int EINVAL ;
 int RDMA_DRIVER_RXE ;
 struct ib_device* ib_device_get_by_name (char*,int ) ;
 int ib_unregister_device_and_put (struct ib_device*) ;
 int ib_unregister_driver (int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int sanitize_arg (char const*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int rxe_param_set_remove(const char *val, const struct kernel_param *kp)
{
 int len;
 char intf[32];
 struct ib_device *ib_dev;

 len = sanitize_arg(val, intf, sizeof(intf));
 if (!len) {
  pr_err("add: invalid interface name\n");
  return -EINVAL;
 }

 if (strncmp("all", intf, len) == 0) {
  pr_info("rxe_sys: remove all");
  ib_unregister_driver(RDMA_DRIVER_RXE);
  return 0;
 }

 ib_dev = ib_device_get_by_name(intf, RDMA_DRIVER_RXE);
 if (!ib_dev) {
  pr_err("not configured on %s\n", intf);
  return -EINVAL;
 }

 ib_unregister_device_and_put(ib_dev);

 return 0;
}
