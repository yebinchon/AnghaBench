
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_clk_100hz; scalar_t__ timing_3d_format; } ;
struct dc_stream_state {int phy_pix_clk; TYPE_1__ timing; int signal; } ;


 scalar_t__ TIMING_3D_FORMAT_HW_FRAME_PACKING ;
 scalar_t__ dc_is_hdmi_signal (int ) ;
 int get_norm_pix_clk (TYPE_1__*) ;

__attribute__((used)) static void calculate_phy_pix_clks(struct dc_stream_state *stream)
{

 if (dc_is_hdmi_signal(stream->signal))
  stream->phy_pix_clk = get_norm_pix_clk(
   &stream->timing) / 10;
 else
  stream->phy_pix_clk =
   stream->timing.pix_clk_100hz / 10;

 if (stream->timing.timing_3d_format == TIMING_3D_FORMAT_HW_FRAME_PACKING)
  stream->phy_pix_clk *= 2;
}
