
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;



 int USNIC_VNIC_RES_TYPE_MAX ;

const char *usnic_vnic_res_type_to_str(enum usnic_vnic_res_type res_type)
{




 static const char * const usnic_vnic_res_type_desc[] = {
      128};



 if (res_type >= USNIC_VNIC_RES_TYPE_MAX)
  return "unknown";

 return usnic_vnic_res_type_desc[res_type];

}
