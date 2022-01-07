
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tv_mode {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct drm_connector_state {TYPE_1__ tv; } ;


 struct tv_mode const* tv_modes ;

__attribute__((used)) static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
{
 int format = conn_state->tv.mode;

 return &tv_modes[format];
}
