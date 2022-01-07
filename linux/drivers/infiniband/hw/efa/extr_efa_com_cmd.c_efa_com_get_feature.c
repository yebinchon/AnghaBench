
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_com_dev {int dummy; } ;
struct efa_admin_get_feature_resp {int dummy; } ;
typedef enum efa_admin_aq_feature_id { ____Placeholder_efa_admin_aq_feature_id } efa_admin_aq_feature_id ;


 int efa_com_get_feature_ex (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int,int ,int ) ;

__attribute__((used)) static int efa_com_get_feature(struct efa_com_dev *edev,
          struct efa_admin_get_feature_resp *get_resp,
          enum efa_admin_aq_feature_id feature_id)
{
 return efa_com_get_feature_ex(edev, get_resp, feature_id, 0, 0);
}
