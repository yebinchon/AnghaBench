
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* vlv_pipe_check ) (struct drm_i915_private*,int) ;
typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ I915_READ (int ) ;
 int INVALID_PIPE ;
 scalar_t__ PANEL_PORT_SELECT_MASK ;
 scalar_t__ PANEL_PORT_SELECT_VLV (int) ;
 int PIPE_A ;
 int PIPE_B ;
 int PP_ON_DELAYS (int) ;

__attribute__((used)) static enum pipe
vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
       enum port port,
       vlv_pipe_check pipe_check)
{
 enum pipe pipe;

 for (pipe = PIPE_A; pipe <= PIPE_B; pipe++) {
  u32 port_sel = I915_READ(PP_ON_DELAYS(pipe)) &
   PANEL_PORT_SELECT_MASK;

  if (port_sel != PANEL_PORT_SELECT_VLV(port))
   continue;

  if (!pipe_check(dev_priv, pipe))
   continue;

  return pipe;
 }

 return INVALID_PIPE;
}
