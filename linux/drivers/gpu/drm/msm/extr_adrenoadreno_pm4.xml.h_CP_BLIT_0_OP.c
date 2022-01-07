
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum cp_blit_cmd { ____Placeholder_cp_blit_cmd } cp_blit_cmd ;


 int CP_BLIT_0_OP__MASK ;
 int CP_BLIT_0_OP__SHIFT ;

__attribute__((used)) static inline uint32_t CP_BLIT_0_OP(enum cp_blit_cmd val)
{
 return ((val) << CP_BLIT_0_OP__SHIFT) & CP_BLIT_0_OP__MASK;
}
