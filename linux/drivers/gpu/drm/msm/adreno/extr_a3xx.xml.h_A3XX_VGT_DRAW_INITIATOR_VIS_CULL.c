
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_vis_cull_mode { ____Placeholder_pc_di_vis_cull_mode } pc_di_vis_cull_mode ;


 int A3XX_VGT_DRAW_INITIATOR_VIS_CULL__MASK ;
 int A3XX_VGT_DRAW_INITIATOR_VIS_CULL__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_VGT_DRAW_INITIATOR_VIS_CULL(enum pc_di_vis_cull_mode val)
{
 return ((val) << A3XX_VGT_DRAW_INITIATOR_VIS_CULL__SHIFT) & A3XX_VGT_DRAW_INITIATOR_VIS_CULL__MASK;
}
