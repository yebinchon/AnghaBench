
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_src_sel { ____Placeholder_pc_di_src_sel } pc_di_src_sel ;


 int A2XX_VGT_DRAW_INITIATOR_SOURCE_SELECT__MASK ;
 int A2XX_VGT_DRAW_INITIATOR_SOURCE_SELECT__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_VGT_DRAW_INITIATOR_SOURCE_SELECT(enum pc_di_src_sel val)
{
 return ((val) << A2XX_VGT_DRAW_INITIATOR_SOURCE_SELECT__SHIFT) & A2XX_VGT_DRAW_INITIATOR_SOURCE_SELECT__MASK;
}
