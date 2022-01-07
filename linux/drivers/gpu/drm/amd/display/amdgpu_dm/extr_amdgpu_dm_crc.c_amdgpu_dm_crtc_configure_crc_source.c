
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_crtc {TYPE_3__* dev; } ;
struct dm_crtc_state {struct dc_stream_state* stream; } ;
struct dc_stream_state {TYPE_1__* ctx; } ;
struct TYPE_5__ {int dc_lock; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
typedef enum amdgpu_dm_pipe_crc_source { ____Placeholder_amdgpu_dm_pipe_crc_source } amdgpu_dm_pipe_crc_source ;
struct TYPE_6__ {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {int dc; } ;


 int DITHER_OPTION_DEFAULT ;
 int DITHER_OPTION_TRUN8 ;
 int EINVAL ;
 int amdgpu_dm_is_valid_crc_source (int) ;
 int dc_stream_configure_crc (int ,struct dc_stream_state*,int,int) ;
 int dc_stream_set_dither_option (struct dc_stream_state*,int ) ;
 scalar_t__ dm_is_crc_source_crtc (int) ;
 int dm_need_crc_dither (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int amdgpu_dm_crtc_configure_crc_source(struct drm_crtc *crtc,
     struct dm_crtc_state *dm_crtc_state,
     enum amdgpu_dm_pipe_crc_source source)
{
 struct amdgpu_device *adev = crtc->dev->dev_private;
 struct dc_stream_state *stream_state = dm_crtc_state->stream;
 bool enable = amdgpu_dm_is_valid_crc_source(source);
 int ret = 0;


 if (!stream_state)
  return 0;

 mutex_lock(&adev->dm.dc_lock);


 if (dm_is_crc_source_crtc(source)) {
  if (!dc_stream_configure_crc(stream_state->ctx->dc,
          stream_state, enable, enable)) {
   ret = -EINVAL;
   goto unlock;
  }
 }


 if (!dm_need_crc_dither(source))
  dc_stream_set_dither_option(stream_state, DITHER_OPTION_TRUN8);
 else
  dc_stream_set_dither_option(stream_state,
         DITHER_OPTION_DEFAULT);

unlock:
 mutex_unlock(&adev->dm.dc_lock);

 return ret;
}
