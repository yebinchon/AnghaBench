
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {int id; int flags; } ;
struct cx2341x_mpeg_params {int capabilities; int audio_encoding; int video_encoding; int video_bitrate_mode; int video_spatial_filter_mode; int video_temporal_filter_mode; int video_median_filter_type; int is_50hz; int audio_mode; } ;
struct TYPE_2__ {int audio_encoding; int audio_l2_bitrate; int audio_ac3_bitrate; int stream_insert_nav_packets; int video_chroma_median_filter_bottom; int video_chroma_median_filter_top; int video_luma_median_filter_bottom; int video_luma_median_filter_top; int video_median_filter_type; int video_temporal_filter; int video_temporal_filter_mode; int video_chroma_spatial_filter_type; int video_luma_spatial_filter_type; int video_spatial_filter; int video_spatial_filter_mode; int stream_vbi_fmt; } ;


 int CX2341X_CAP_HAS_AC3 ;
 int CX2341X_CAP_HAS_SLICED_VBI ;
 int EINVAL ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int V4L2_CTRL_FLAG_INACTIVE ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_SLIDER ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_448K ;
 int V4L2_MPEG_AUDIO_AC3_BITRATE_48K ;
 int V4L2_MPEG_AUDIO_CRC_CRC16 ;
 int V4L2_MPEG_AUDIO_CRC_NONE ;
 int V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 ;
 int V4L2_MPEG_AUDIO_EMPHASIS_NONE ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_AUDIO_ENCODING_LAYER_2 ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_192K ;
 int V4L2_MPEG_AUDIO_L2_BITRATE_384K ;
 int V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 ;
 int V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 ;
 int V4L2_MPEG_AUDIO_MODE_JOINT_STEREO ;
 int V4L2_MPEG_AUDIO_MODE_MONO ;
 int V4L2_MPEG_AUDIO_MODE_STEREO ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100 ;
 int V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 ;
 int V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR ;
 int V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE ;
 int V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG ;
 int V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF ;
 int V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO ;
 int V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL ;
 int V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO ;
 int V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_PS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD ;
 int V4L2_MPEG_STREAM_VBI_FMT_IVTV ;
 int V4L2_MPEG_STREAM_VBI_FMT_NONE ;
 int V4L2_MPEG_VIDEO_ASPECT_1x1 ;
 int V4L2_MPEG_VIDEO_ASPECT_221x100 ;
 int V4L2_MPEG_VIDEO_ASPECT_4x3 ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 int cx2341x_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int ) ;
 TYPE_1__ default_params ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

int cx2341x_ctrl_query(const struct cx2341x_mpeg_params *params,
         struct v4l2_queryctrl *qctrl)
{
 int err;

 switch (qctrl->id) {
 case 153:
  return v4l2_ctrl_query_fill(qctrl, 0, 0, 0, 0);
 case 140:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_STREAM_TYPE_MPEG2_PS,
    V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD, 1,
    V4L2_MPEG_STREAM_TYPE_MPEG2_PS);

 case 139:
  if (params->capabilities & CX2341X_CAP_HAS_SLICED_VBI)
   return v4l2_ctrl_query_fill(qctrl,
     V4L2_MPEG_STREAM_VBI_FMT_NONE,
     V4L2_MPEG_STREAM_VBI_FMT_IVTV, 1,
     V4L2_MPEG_STREAM_VBI_FMT_NONE);
  return cx2341x_ctrl_query_fill(qctrl,
    V4L2_MPEG_STREAM_VBI_FMT_NONE,
    V4L2_MPEG_STREAM_VBI_FMT_NONE, 1,
    default_params.stream_vbi_fmt);

 case 154:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000, 1,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000);

 case 159:
  if (params->capabilities & CX2341X_CAP_HAS_AC3) {






   return v4l2_ctrl_query_fill(qctrl,
     V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
     V4L2_MPEG_AUDIO_ENCODING_AC3, 1,
     default_params.audio_encoding);
  }

  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_2, 1,
    default_params.audio_encoding);

 case 158:
  err = v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_L2_BITRATE_192K,
    V4L2_MPEG_AUDIO_L2_BITRATE_384K, 1,
    default_params.audio_l2_bitrate);
  if (err)
   return err;
  if (params->capabilities & CX2341X_CAP_HAS_AC3 &&
      params->audio_encoding != V4L2_MPEG_AUDIO_ENCODING_LAYER_2)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 157:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_MODE_STEREO,
    V4L2_MPEG_AUDIO_MODE_MONO, 1,
    V4L2_MPEG_AUDIO_MODE_STEREO);

 case 156:
  err = v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16, 1,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4);
  if (err == 0 &&
      params->audio_mode != V4L2_MPEG_AUDIO_MODE_JOINT_STEREO)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return err;

 case 160:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_EMPHASIS_NONE,
    V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, 1,
    V4L2_MPEG_AUDIO_EMPHASIS_NONE);

 case 161:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_CRC_NONE,
    V4L2_MPEG_AUDIO_CRC_CRC16, 1,
    V4L2_MPEG_AUDIO_CRC_NONE);

 case 155:
  return v4l2_ctrl_query_fill(qctrl, 0, 1, 1, 0);

 case 162:
  err = v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_AUDIO_AC3_BITRATE_48K,
    V4L2_MPEG_AUDIO_AC3_BITRATE_448K, 1,
    default_params.audio_ac3_bitrate);
  if (err)
   return err;
  if (params->capabilities & CX2341X_CAP_HAS_AC3) {
   if (params->audio_encoding !=
         V4L2_MPEG_AUDIO_ENCODING_AC3)
    qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  } else
   qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
  return 0;

 case 133:



  err = v4l2_ctrl_query_fill(qctrl,
        V4L2_MPEG_VIDEO_ENCODING_MPEG_1,
        V4L2_MPEG_VIDEO_ENCODING_MPEG_2, 1,
        V4L2_MPEG_VIDEO_ENCODING_MPEG_2);
  if (err == 0)
   qctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
  return err;

 case 138:
  return v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_VIDEO_ASPECT_1x1,
    V4L2_MPEG_VIDEO_ASPECT_221x100, 1,
    V4L2_MPEG_VIDEO_ASPECT_4x3);

 case 134:
  return v4l2_ctrl_query_fill(qctrl, 0, 33, 1, 2);

 case 131:
  return v4l2_ctrl_query_fill(qctrl, 1, 34, 1,
    params->is_50hz ? 12 : 15);

 case 132:
  return v4l2_ctrl_query_fill(qctrl, 0, 1, 1, 1);

 case 136:
  err = v4l2_ctrl_query_fill(qctrl,
    V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 1,
    V4L2_MPEG_VIDEO_BITRATE_MODE_VBR);
  if (err == 0 &&
      params->video_encoding == V4L2_MPEG_VIDEO_ENCODING_MPEG_1)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return err;

 case 137:
  return v4l2_ctrl_query_fill(qctrl, 0, 27000000, 1, 6000000);

 case 135:
  err = v4l2_ctrl_query_fill(qctrl, 0, 27000000, 1, 8000000);
  if (err == 0 &&
      params->video_bitrate_mode ==
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return err;

 case 128:
  return v4l2_ctrl_query_fill(qctrl, 0, 255, 1, 0);

 case 130:
  return v4l2_ctrl_query_fill(qctrl, 0, 1, 1, 0);

 case 129:
  return v4l2_ctrl_query_fill(qctrl, 0, 0xffffff, 1, 0x008080);


 case 143:
  return cx2341x_ctrl_query_fill(qctrl,
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL,
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO, 1,
   default_params.video_spatial_filter_mode);

 case 144:
  cx2341x_ctrl_query_fill(qctrl, 0, 15, 1,
    default_params.video_spatial_filter);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_spatial_filter_mode ==
       V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 146:
  cx2341x_ctrl_query_fill(qctrl,
   V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF,
   V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE,
   1,
   default_params.video_luma_spatial_filter_type);
  if (params->video_spatial_filter_mode ==
       V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 149:
  cx2341x_ctrl_query_fill(qctrl,
      V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF,
      V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR,
      1,
      default_params.video_chroma_spatial_filter_type);
  if (params->video_spatial_filter_mode ==
   V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 141:
  return cx2341x_ctrl_query_fill(qctrl,
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL,
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO, 1,
   default_params.video_temporal_filter_mode);

 case 142:
  cx2341x_ctrl_query_fill(qctrl, 0, 31, 1,
    default_params.video_temporal_filter);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_temporal_filter_mode ==
   V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 145:
  return cx2341x_ctrl_query_fill(qctrl,
   V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF,
   V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG, 1,
   default_params.video_median_filter_type);

 case 147:
  cx2341x_ctrl_query_fill(qctrl, 0, 255, 1,
    default_params.video_luma_median_filter_top);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_median_filter_type ==
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 148:
  cx2341x_ctrl_query_fill(qctrl, 0, 255, 1,
    default_params.video_luma_median_filter_bottom);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_median_filter_type ==
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 150:
  cx2341x_ctrl_query_fill(qctrl, 0, 255, 1,
    default_params.video_chroma_median_filter_top);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_median_filter_type ==
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 151:
  cx2341x_ctrl_query_fill(qctrl, 0, 255, 1,
   default_params.video_chroma_median_filter_bottom);
  qctrl->flags |= V4L2_CTRL_FLAG_SLIDER;
  if (params->video_median_filter_type ==
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF)
   qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return 0;

 case 152:
  return cx2341x_ctrl_query_fill(qctrl, 0, 1, 1,
    default_params.stream_insert_nav_packets);

 default:
  return -EINVAL;

 }
}
