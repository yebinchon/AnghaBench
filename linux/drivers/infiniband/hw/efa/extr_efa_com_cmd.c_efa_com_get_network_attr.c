
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efa_com_get_network_attr_result {int mtu; int addr; } ;
struct efa_com_dev {int efa_dev; } ;
struct TYPE_3__ {int mtu; int addr; } ;
struct TYPE_4__ {TYPE_1__ network_attr; } ;
struct efa_admin_get_feature_resp {TYPE_2__ u; } ;


 int EFA_ADMIN_NETWORK_ATTR ;
 int efa_com_get_feature (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int ) ;
 int ibdev_err_ratelimited (int ,char*,int) ;
 int memcpy (int ,int ,int) ;

int efa_com_get_network_attr(struct efa_com_dev *edev,
        struct efa_com_get_network_attr_result *result)
{
 struct efa_admin_get_feature_resp resp;
 int err;

 err = efa_com_get_feature(edev, &resp,
      EFA_ADMIN_NETWORK_ATTR);
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to get network attributes %d\n",
          err);
  return err;
 }

 memcpy(result->addr, resp.u.network_attr.addr,
        sizeof(resp.u.network_attr.addr));
 result->mtu = resp.u.network_attr.mtu;

 return 0;
}
