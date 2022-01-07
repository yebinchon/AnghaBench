
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dsi_traffic_mode { ____Placeholder_dsi_traffic_mode } dsi_traffic_mode ;


 int DSI_VID_CFG0_TRAFFIC_MODE__MASK ;
 int DSI_VID_CFG0_TRAFFIC_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_VID_CFG0_TRAFFIC_MODE(enum dsi_traffic_mode val)
{
 return ((val) << DSI_VID_CFG0_TRAFFIC_MODE__SHIFT) & DSI_VID_CFG0_TRAFFIC_MODE__MASK;
}
