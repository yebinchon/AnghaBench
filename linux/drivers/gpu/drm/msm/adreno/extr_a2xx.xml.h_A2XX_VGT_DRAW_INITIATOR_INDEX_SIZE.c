
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_index_size { ____Placeholder_pc_di_index_size } pc_di_index_size ;


 int A2XX_VGT_DRAW_INITIATOR_INDEX_SIZE__MASK ;
 int A2XX_VGT_DRAW_INITIATOR_INDEX_SIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_VGT_DRAW_INITIATOR_INDEX_SIZE(enum pc_di_index_size val)
{
 return ((val) << A2XX_VGT_DRAW_INITIATOR_INDEX_SIZE__SHIFT) & A2XX_VGT_DRAW_INITIATOR_INDEX_SIZE__MASK;
}
