
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int dummy; } ;
struct dc {int current_state; } ;


 int dc_resource_state_copy_construct (int ,struct dc_state*) ;

void dc_resource_state_copy_construct_current(
  const struct dc *dc,
  struct dc_state *dst_ctx)
{
 dc_resource_state_copy_construct(dc->current_state, dst_ctx);
}
