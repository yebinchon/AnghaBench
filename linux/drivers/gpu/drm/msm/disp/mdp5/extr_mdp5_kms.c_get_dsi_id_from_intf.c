
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* connect; } ;
struct mdp5_cfg_hw {TYPE_1__ intf; } ;
typedef enum mdp5_intf_type { ____Placeholder_mdp5_intf_type } mdp5_intf_type ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int const INTF_DSI ;

__attribute__((used)) static int get_dsi_id_from_intf(const struct mdp5_cfg_hw *hw_cfg, int intf_num)
{
 const enum mdp5_intf_type *intfs = hw_cfg->intf.connect;
 const int intf_cnt = ARRAY_SIZE(hw_cfg->intf.connect);
 int id = 0, i;

 for (i = 0; i < intf_cnt; i++) {
  if (intfs[i] == INTF_DSI) {
   if (intf_num == i)
    return id;

   id++;
  }
 }

 return -EINVAL;
}
