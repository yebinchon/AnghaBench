
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_primtype { ____Placeholder_pc_di_primtype } pc_di_primtype ;


 int A4XX_CP_DRAW_INDIRECT_0_PRIM_TYPE__MASK ;
 int A4XX_CP_DRAW_INDIRECT_0_PRIM_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_CP_DRAW_INDIRECT_0_PRIM_TYPE(enum pc_di_primtype val)
{
 return ((val) << A4XX_CP_DRAW_INDIRECT_0_PRIM_TYPE__SHIFT) & A4XX_CP_DRAW_INDIRECT_0_PRIM_TYPE__MASK;
}
