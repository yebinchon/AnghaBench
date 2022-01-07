
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_vtx_fmt { ____Placeholder_a6xx_vtx_fmt } a6xx_vtx_fmt ;


 int A6XX_VFD_DECODE_INSTR_FORMAT__MASK ;
 int A6XX_VFD_DECODE_INSTR_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_VFD_DECODE_INSTR_FORMAT(enum a6xx_vtx_fmt val)
{
 return ((val) << A6XX_VFD_DECODE_INSTR_FORMAT__SHIFT) & A6XX_VFD_DECODE_INSTR_FORMAT__MASK;
}
