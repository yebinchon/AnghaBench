
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_depth_format { ____Placeholder_adreno_rb_depth_format } adreno_rb_depth_format ;


 int A3XX_RB_DEPTH_INFO_DEPTH_FORMAT__MASK ;
 int A3XX_RB_DEPTH_INFO_DEPTH_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_RB_DEPTH_INFO_DEPTH_FORMAT(enum adreno_rb_depth_format val)
{
 return ((val) << A3XX_RB_DEPTH_INFO_DEPTH_FORMAT__SHIFT) & A3XX_RB_DEPTH_INFO_DEPTH_FORMAT__MASK;
}
