
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_threadsize { ____Placeholder_a3xx_threadsize } a3xx_threadsize ;


 int A5XX_HLSQ_CONTROL_0_REG_CSTHREADSIZE__MASK ;
 int A5XX_HLSQ_CONTROL_0_REG_CSTHREADSIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_HLSQ_CONTROL_0_REG_CSTHREADSIZE(enum a3xx_threadsize val)
{
 return ((val) << A5XX_HLSQ_CONTROL_0_REG_CSTHREADSIZE__SHIFT) & A5XX_HLSQ_CONTROL_0_REG_CSTHREADSIZE__MASK;
}
