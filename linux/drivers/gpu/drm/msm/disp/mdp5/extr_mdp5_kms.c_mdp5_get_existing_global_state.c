
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mdp5_kms {TYPE_1__ glob_state; } ;
struct mdp5_global_state {int dummy; } ;


 struct mdp5_global_state* to_mdp5_global_state (int ) ;

struct mdp5_global_state *
mdp5_get_existing_global_state(struct mdp5_kms *mdp5_kms)
{
 return to_mdp5_global_state(mdp5_kms->glob_state.state);
}
