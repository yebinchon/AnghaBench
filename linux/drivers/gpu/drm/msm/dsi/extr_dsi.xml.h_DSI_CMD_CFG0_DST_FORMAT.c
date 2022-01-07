
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dsi_cmd_dst_format { ____Placeholder_dsi_cmd_dst_format } dsi_cmd_dst_format ;


 int DSI_CMD_CFG0_DST_FORMAT__MASK ;
 int DSI_CMD_CFG0_DST_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_CMD_CFG0_DST_FORMAT(enum dsi_cmd_dst_format val)
{
 return ((val) << DSI_CMD_CFG0_DST_FORMAT__SHIFT) & DSI_CMD_CFG0_DST_FORMAT__MASK;
}
