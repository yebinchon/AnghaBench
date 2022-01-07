
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efa_com_get_hw_hints_result {int poll_interval; int mmio_read_timeout; int driver_watchdog_timeout; int admin_completion_timeout; } ;
struct efa_com_dev {int efa_dev; } ;
struct TYPE_4__ {int poll_interval; int mmio_read_timeout; int driver_watchdog_timeout; int admin_completion_timeout; } ;
struct TYPE_3__ {TYPE_2__ hw_hints; } ;
struct efa_admin_get_feature_resp {TYPE_1__ u; } ;


 int EFA_ADMIN_HW_HINTS ;
 int efa_com_get_feature (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int ) ;
 int ibdev_err_ratelimited (int ,char*,int) ;

int efa_com_get_hw_hints(struct efa_com_dev *edev,
    struct efa_com_get_hw_hints_result *result)
{
 struct efa_admin_get_feature_resp resp;
 int err;

 err = efa_com_get_feature(edev, &resp, EFA_ADMIN_HW_HINTS);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to get hw hints %d\n", err);
  return err;
 }

 result->admin_completion_timeout = resp.u.hw_hints.admin_completion_timeout;
 result->driver_watchdog_timeout = resp.u.hw_hints.driver_watchdog_timeout;
 result->mmio_read_timeout = resp.u.hw_hints.mmio_read_timeout;
 result->poll_interval = resp.u.hw_hints.poll_interval;

 return 0;
}
