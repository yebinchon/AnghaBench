
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DP_DUAL_MODE_REV_TYPE2 ;
 int DP_DUAL_MODE_TYPE_TYPE2 ;

__attribute__((used)) static bool is_type2_adaptor(uint8_t adaptor_id)
{
 return adaptor_id == (DP_DUAL_MODE_TYPE_TYPE2 |
         DP_DUAL_MODE_REV_TYPE2);
}
