
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pc_di_src_sel { ____Placeholder_pc_di_src_sel } pc_di_src_sel ;


 int CP_DRAW_INDX_2_1_SOURCE_SELECT__MASK ;
 int CP_DRAW_INDX_2_1_SOURCE_SELECT__SHIFT ;

__attribute__((used)) static inline uint32_t CP_DRAW_INDX_2_1_SOURCE_SELECT(enum pc_di_src_sel val)
{
 return ((val) << CP_DRAW_INDX_2_1_SOURCE_SELECT__SHIFT) & CP_DRAW_INDX_2_1_SOURCE_SELECT__MASK;
}
