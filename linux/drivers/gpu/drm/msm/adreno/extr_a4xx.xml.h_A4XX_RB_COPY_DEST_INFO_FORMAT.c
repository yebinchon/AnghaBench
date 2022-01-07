
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_color_fmt { ____Placeholder_a4xx_color_fmt } a4xx_color_fmt ;


 int A4XX_RB_COPY_DEST_INFO_FORMAT__MASK ;
 int A4XX_RB_COPY_DEST_INFO_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_COPY_DEST_INFO_FORMAT(enum a4xx_color_fmt val)
{
 return ((val) << A4XX_RB_COPY_DEST_INFO_FORMAT__SHIFT) & A4XX_RB_COPY_DEST_INFO_FORMAT__MASK;
}
