
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;



__attribute__((used)) static void virtual_stream_encoder_dp_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing,
 enum dc_color_space output_color_space,
 uint32_t enable_sdp_splitting) {}
