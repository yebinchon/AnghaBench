
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_ctx {int dummy; } ;
struct dc_state {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int enable_link_dp (struct dc_state*,struct pipe_ctx*) ;

__attribute__((used)) static enum dc_status enable_link_edp(
  struct dc_state *state,
  struct pipe_ctx *pipe_ctx)
{
 enum dc_status status;

 status = enable_link_dp(state, pipe_ctx);

 return status;
}
