
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vnic_res_type { ____Placeholder_vnic_res_type } vnic_res_type ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;


 int RES_TYPE_MAX ;

 int USNIC_VNIC_RES_TYPE_MAX ;

__attribute__((used)) static enum vnic_res_type _to_vnic_res_type(enum usnic_vnic_res_type res_type)
{




 static enum vnic_res_type usnic_vnic_type_2_vnic_type[] = {
      128};



 if (res_type >= USNIC_VNIC_RES_TYPE_MAX)
  return RES_TYPE_MAX;

 return usnic_vnic_type_2_vnic_type[res_type];
}
