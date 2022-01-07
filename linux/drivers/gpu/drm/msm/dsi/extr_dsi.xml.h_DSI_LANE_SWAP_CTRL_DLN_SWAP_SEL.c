
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dsi_lane_swap { ____Placeholder_dsi_lane_swap } dsi_lane_swap ;


 int DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL__MASK ;
 int DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL(enum dsi_lane_swap val)
{
 return ((val) << DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL__SHIFT) & DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL__MASK;
}
