
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dsi_rgb_swap { ____Placeholder_dsi_rgb_swap } dsi_rgb_swap ;


 int DSI_VID_CFG1_RGB_SWAP__MASK ;
 int DSI_VID_CFG1_RGB_SWAP__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_VID_CFG1_RGB_SWAP(enum dsi_rgb_swap val)
{
 return ((val) << DSI_VID_CFG1_RGB_SWAP__SHIFT) & DSI_VID_CFG1_RGB_SWAP__MASK;
}
