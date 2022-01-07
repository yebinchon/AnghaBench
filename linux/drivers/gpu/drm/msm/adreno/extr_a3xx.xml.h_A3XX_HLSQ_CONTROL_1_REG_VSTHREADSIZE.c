
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_threadsize { ____Placeholder_a3xx_threadsize } a3xx_threadsize ;


 int A3XX_HLSQ_CONTROL_1_REG_VSTHREADSIZE__MASK ;
 int A3XX_HLSQ_CONTROL_1_REG_VSTHREADSIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_HLSQ_CONTROL_1_REG_VSTHREADSIZE(enum a3xx_threadsize val)
{
 return ((val) << A3XX_HLSQ_CONTROL_1_REG_VSTHREADSIZE__SHIFT) & A3XX_HLSQ_CONTROL_1_REG_VSTHREADSIZE__MASK;
}
