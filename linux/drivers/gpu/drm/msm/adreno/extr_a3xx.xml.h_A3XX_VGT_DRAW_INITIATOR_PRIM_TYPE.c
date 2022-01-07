
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_primtype { ____Placeholder_pc_di_primtype } pc_di_primtype ;


 int A3XX_VGT_DRAW_INITIATOR_PRIM_TYPE__MASK ;
 int A3XX_VGT_DRAW_INITIATOR_PRIM_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_VGT_DRAW_INITIATOR_PRIM_TYPE(enum pc_di_primtype val)
{
 return ((val) << A3XX_VGT_DRAW_INITIATOR_PRIM_TYPE__SHIFT) & A3XX_VGT_DRAW_INITIATOR_PRIM_TYPE__MASK;
}
