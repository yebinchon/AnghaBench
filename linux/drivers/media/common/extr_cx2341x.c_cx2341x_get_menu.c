
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static const char **cx2341x_get_menu(u32 id)
{
 static const char *cx2341x_video_spatial_filter_mode_menu[] = {
  "Manual",
  "Auto",
  ((void*)0)
 };

 static const char *cx2341x_video_luma_spatial_filter_type_menu[] = {
  "Off",
  "1D Horizontal",
  "1D Vertical",
  "2D H/V Separable",
  "2D Symmetric non-separable",
  ((void*)0)
 };

 static const char *cx2341x_video_chroma_spatial_filter_type_menu[] = {
  "Off",
  "1D Horizontal",
  ((void*)0)
 };

 static const char *cx2341x_video_temporal_filter_mode_menu[] = {
  "Manual",
  "Auto",
  ((void*)0)
 };

 static const char *cx2341x_video_median_filter_type_menu[] = {
  "Off",
  "Horizontal",
  "Vertical",
  "Horizontal/Vertical",
  "Diagonal",
  ((void*)0)
 };

 switch (id) {
 case 129:
  return cx2341x_video_spatial_filter_mode_menu;
 case 131:
  return cx2341x_video_luma_spatial_filter_type_menu;
 case 132:
  return cx2341x_video_chroma_spatial_filter_type_menu;
 case 128:
  return cx2341x_video_temporal_filter_mode_menu;
 case 130:
  return cx2341x_video_median_filter_type_menu;
 }
 return ((void*)0);
}
