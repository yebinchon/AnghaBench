
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_color_swap { ____Placeholder_a3xx_color_swap } a3xx_color_swap ;


 int A5XX_RB_MRT_BUF_INFO_COLOR_SWAP__MASK ;
 int A5XX_RB_MRT_BUF_INFO_COLOR_SWAP__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_RB_MRT_BUF_INFO_COLOR_SWAP(enum a3xx_color_swap val)
{
 return ((val) << A5XX_RB_MRT_BUF_INFO_COLOR_SWAP__SHIFT) & A5XX_RB_MRT_BUF_INFO_COLOR_SWAP__MASK;
}
