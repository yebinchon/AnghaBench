
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx2341x_mpeg_params {int capabilities; } ;


 int CX2341X_CAP_HAS_AC3 ;
 int CX2341X_CAP_HAS_TS ;
 char const* const* cx2341x_get_menu (int) ;
 char const* const* v4l2_ctrl_get_menu (int) ;

const char * const *cx2341x_ctrl_get_menu(const struct cx2341x_mpeg_params *p, u32 id)
{
 static const char * const mpeg_stream_type_without_ts[] = {
  "MPEG-2 Program Stream",
  "",
  "MPEG-1 System Stream",
  "MPEG-2 DVD-compatible Stream",
  "MPEG-1 VCD-compatible Stream",
  "MPEG-2 SVCD-compatible Stream",
  ((void*)0)
 };

 static const char *mpeg_stream_type_with_ts[] = {
  "MPEG-2 Program Stream",
  "MPEG-2 Transport Stream",
  "MPEG-1 System Stream",
  "MPEG-2 DVD-compatible Stream",
  "MPEG-1 VCD-compatible Stream",
  "MPEG-2 SVCD-compatible Stream",
  ((void*)0)
 };

 static const char *mpeg_audio_encoding_l2_ac3[] = {
  "",
  "MPEG-1/2 Layer II",
  "",
  "",
  "AC-3",
  ((void*)0)
 };

 switch (id) {
 case 128:
  return (p->capabilities & CX2341X_CAP_HAS_TS) ?
   mpeg_stream_type_with_ts : mpeg_stream_type_without_ts;
 case 136:
  return (p->capabilities & CX2341X_CAP_HAS_AC3) ?
   mpeg_audio_encoding_l2_ac3 : v4l2_ctrl_get_menu(id);
 case 135:
 case 134:
  return ((void*)0);
 case 130:
 case 132:
 case 133:
 case 129:
 case 131:
  return cx2341x_get_menu(id);
 default:
  return v4l2_ctrl_get_menu(id);
 }
}
