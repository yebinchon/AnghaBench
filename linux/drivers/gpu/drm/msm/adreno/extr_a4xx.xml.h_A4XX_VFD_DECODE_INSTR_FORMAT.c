
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_vtx_fmt { ____Placeholder_a4xx_vtx_fmt } a4xx_vtx_fmt ;


 int A4XX_VFD_DECODE_INSTR_FORMAT__MASK ;
 int A4XX_VFD_DECODE_INSTR_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_VFD_DECODE_INSTR_FORMAT(enum a4xx_vtx_fmt val)
{
 return ((val) << A4XX_VFD_DECODE_INSTR_FORMAT__SHIFT) & A4XX_VFD_DECODE_INSTR_FORMAT__MASK;
}
