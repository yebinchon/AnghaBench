
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_flow_action_attrs_esp_replays {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int flow_action_esp_replay_none(struct ib_flow_action_attrs_esp_replays *replay,
           bool is_modify)
{





 return is_modify ? 0 : -EINVAL;
}
