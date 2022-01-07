
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dsi_cmd_trigger { ____Placeholder_dsi_cmd_trigger } dsi_cmd_trigger ;


 int DSI_TRIG_CTRL_MDP_TRIGGER__MASK ;
 int DSI_TRIG_CTRL_MDP_TRIGGER__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_TRIG_CTRL_MDP_TRIGGER(enum dsi_cmd_trigger val)
{
 return ((val) << DSI_TRIG_CTRL_MDP_TRIGGER__SHIFT) & DSI_TRIG_CTRL_MDP_TRIGGER__MASK;
}
