
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct intel_plane {int (* get_hw_state ) (struct intel_plane*,int*) ;TYPE_1__ base; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_STATE_WARN (int,char*,int ,int ,int ) ;
 int onoff (int) ;
 int stub1 (struct intel_plane*,int*) ;

__attribute__((used)) static void assert_plane(struct intel_plane *plane, bool state)
{
 enum pipe pipe;
 bool cur_state;

 cur_state = plane->get_hw_state(plane, &pipe);

 I915_STATE_WARN(cur_state != state,
   "%s assertion failure (expected %s, current %s)\n",
   plane->base.name, onoff(state), onoff(cur_state));
}
