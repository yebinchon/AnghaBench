
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum edp_component_format { ____Placeholder_edp_component_format } edp_component_format ;


 int EDP_MISC1_MISC0_COMPONENT_FORMAT__MASK ;
 int EDP_MISC1_MISC0_COMPONENT_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t EDP_MISC1_MISC0_COMPONENT_FORMAT(enum edp_component_format val)
{
 return ((val) << EDP_MISC1_MISC0_COMPONENT_FORMAT__SHIFT) & EDP_MISC1_MISC0_COMPONENT_FORMAT__MASK;
}
