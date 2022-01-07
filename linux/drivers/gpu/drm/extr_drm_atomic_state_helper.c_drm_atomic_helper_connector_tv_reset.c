
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int bottom; int top; int right; int left; } ;
struct TYPE_4__ {TYPE_3__ margins; } ;
struct drm_connector_state {TYPE_1__ tv; } ;
struct TYPE_5__ {int bottom; int top; int right; int left; } ;
struct drm_cmdline_mode {TYPE_2__ tv_margins; } ;
struct drm_connector {struct drm_connector_state* state; struct drm_cmdline_mode cmdline_mode; } ;



void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector)
{
 struct drm_cmdline_mode *cmdline = &connector->cmdline_mode;
 struct drm_connector_state *state = connector->state;

 state->tv.margins.left = cmdline->tv_margins.left;
 state->tv.margins.right = cmdline->tv_margins.right;
 state->tv.margins.top = cmdline->tv_margins.top;
 state->tv.margins.bottom = cmdline->tv_margins.bottom;
}
