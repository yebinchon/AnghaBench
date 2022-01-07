
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efa_com_dev {int supported_features; } ;
typedef enum efa_admin_aq_feature_id { ____Placeholder_efa_admin_aq_feature_id } efa_admin_aq_feature_id ;


 int EFA_ADMIN_DEVICE_ATTR ;

__attribute__((used)) static bool
efa_com_check_supported_feature_id(struct efa_com_dev *edev,
       enum efa_admin_aq_feature_id feature_id)
{
 u32 feature_mask = 1 << feature_id;


 if (feature_id != EFA_ADMIN_DEVICE_ATTR &&
     !(edev->supported_features & feature_mask))
  return 0;

 return 1;
}
