
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct seq_file {struct drm_connector* private; } ;
struct TYPE_10__ {int mutex; int connection_mutex; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_crtc {int mutex; int * state; } ;
struct TYPE_9__ {unsigned int bpc; } ;
struct drm_connector {TYPE_4__ display_info; TYPE_1__* state; struct drm_device* dev; } ;
struct dm_crtc_state {TYPE_3__* stream; } ;
struct TYPE_7__ {int display_color_depth; } ;
struct TYPE_8__ {TYPE_2__ timing; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;







 int ENODEV ;
 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 struct dm_crtc_state* to_dm_crtc_state (int *) ;

__attribute__((used)) static int output_bpc_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct drm_device *dev = connector->dev;
 struct drm_crtc *crtc = ((void*)0);
 struct dm_crtc_state *dm_crtc_state = ((void*)0);
 int res = -ENODEV;
 unsigned int bpc;

 mutex_lock(&dev->mode_config.mutex);
 drm_modeset_lock(&dev->mode_config.connection_mutex, ((void*)0));

 if (connector->state == ((void*)0))
  goto unlock;

 crtc = connector->state->crtc;
 if (crtc == ((void*)0))
  goto unlock;

 drm_modeset_lock(&crtc->mutex, ((void*)0));
 if (crtc->state == ((void*)0))
  goto unlock;

 dm_crtc_state = to_dm_crtc_state(crtc->state);
 if (dm_crtc_state->stream == ((void*)0))
  goto unlock;

 switch (dm_crtc_state->stream->timing.display_color_depth) {
 case 129:
  bpc = 6;
  break;
 case 128:
  bpc = 8;
  break;
 case 132:
  bpc = 10;
  break;
 case 131:
  bpc = 12;
  break;
 case 130:
  bpc = 16;
  break;
 default:
  goto unlock;
 }

 seq_printf(m, "Current: %u\n", bpc);
 seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
 res = 0;

unlock:
 if (crtc)
  drm_modeset_unlock(&crtc->mutex);

 drm_modeset_unlock(&dev->mode_config.connection_mutex);
 mutex_unlock(&dev->mode_config.mutex);

 return res;
}
