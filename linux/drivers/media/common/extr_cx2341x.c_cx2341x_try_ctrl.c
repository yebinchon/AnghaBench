
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; } ;
struct cx2341x_handler {TYPE_6__* video_bitrate; TYPE_5__* video_bitrate_peak; TYPE_4__* video_bitrate_mode; TYPE_3__* video_encoding; TYPE_2__* stream_type; TYPE_1__* video_gop_size; } ;
typedef int s32 ;
struct TYPE_12__ {int val; } ;
struct TYPE_11__ {int val; } ;
struct TYPE_10__ {int val; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_7__ {int val; } ;




 int V4L2_MPEG_STREAM_TYPE_MPEG1_SS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG1_VCD ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_2 ;
 struct cx2341x_handler* to_cxhdl (struct v4l2_ctrl*) ;

__attribute__((used)) static int cx2341x_try_ctrl(struct v4l2_ctrl *ctrl)
{
 struct cx2341x_handler *hdl = to_cxhdl(ctrl);
 s32 val = ctrl->val;

 switch (ctrl->id) {
 case 128: {

  int b = val + 1;
  int gop = hdl->video_gop_size->val;

  gop = b * ((gop + b - 1) / b);


  while (gop > 34)
   gop -= b;
  hdl->video_gop_size->val = gop;
  break;
 }

 case 129:

  hdl->video_encoding->val =
      (hdl->stream_type->val == V4L2_MPEG_STREAM_TYPE_MPEG1_SS ||
       hdl->stream_type->val == V4L2_MPEG_STREAM_TYPE_MPEG1_VCD) ?
   V4L2_MPEG_VIDEO_ENCODING_MPEG_1 :
   V4L2_MPEG_VIDEO_ENCODING_MPEG_2;
  if (hdl->video_encoding->val == V4L2_MPEG_VIDEO_ENCODING_MPEG_1)

   hdl->video_bitrate_mode->val =
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR;

  if (hdl->video_bitrate_mode->val == V4L2_MPEG_VIDEO_BITRATE_MODE_VBR &&
      hdl->video_bitrate_peak->val < hdl->video_bitrate->val)
   hdl->video_bitrate_peak->val = hdl->video_bitrate->val;
  break;
 }
 return 0;
}
