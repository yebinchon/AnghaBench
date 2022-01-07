
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_blit_buf { ____Placeholder_a5xx_blit_buf } a5xx_blit_buf ;


 int A5XX_RB_BLIT_CNTL_BUF__MASK ;
 int A5XX_RB_BLIT_CNTL_BUF__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_RB_BLIT_CNTL_BUF(enum a5xx_blit_buf val)
{
 return ((val) << A5XX_RB_BLIT_CNTL_BUF__SHIFT) & A5XX_RB_BLIT_CNTL_BUF__MASK;
}
