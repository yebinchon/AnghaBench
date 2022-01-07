
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct efa_com_dev {int efa_dev; } ;
struct efa_admin_set_feature_resp {int dummy; } ;
struct TYPE_7__ {int enabled_groups; } ;
struct TYPE_8__ {TYPE_3__ aenq; } ;
struct efa_admin_set_feature_cmd {TYPE_4__ u; } ;
struct TYPE_5__ {int supported_groups; int enabled_groups; } ;
struct TYPE_6__ {TYPE_1__ aenq; } ;
struct efa_admin_get_feature_resp {TYPE_2__ u; } ;


 int EFA_ADMIN_AENQ_CONFIG ;
 int EOPNOTSUPP ;
 int efa_com_get_feature (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int ) ;
 int efa_com_set_feature (struct efa_com_dev*,struct efa_admin_set_feature_resp*,struct efa_admin_set_feature_cmd*,int ) ;
 int ibdev_dbg (int ,char*,int,...) ;
 int ibdev_err_ratelimited (int ,char*,int,...) ;

int efa_com_set_aenq_config(struct efa_com_dev *edev, u32 groups)
{
 struct efa_admin_get_feature_resp get_resp;
 struct efa_admin_set_feature_resp set_resp;
 struct efa_admin_set_feature_cmd cmd = {};
 int err;

 ibdev_dbg(edev->efa_dev, "Configuring aenq with groups[%#x]\n", groups);

 err = efa_com_get_feature(edev, &get_resp, EFA_ADMIN_AENQ_CONFIG);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to get aenq attributes: %d\n",
          err);
  return err;
 }

 ibdev_dbg(edev->efa_dev,
    "Get aenq groups: supported[%#x] enabled[%#x]\n",
    get_resp.u.aenq.supported_groups,
    get_resp.u.aenq.enabled_groups);

 if ((get_resp.u.aenq.supported_groups & groups) != groups) {
  ibdev_err_ratelimited(
   edev->efa_dev,
   "Trying to set unsupported aenq groups[%#x] supported[%#x]\n",
   groups, get_resp.u.aenq.supported_groups);
  return -EOPNOTSUPP;
 }

 cmd.u.aenq.enabled_groups = groups;
 err = efa_com_set_feature(edev, &set_resp, &cmd,
      EFA_ADMIN_AENQ_CONFIG);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to set aenq attributes: %d\n",
          err);
  return err;
 }

 return 0;
}
