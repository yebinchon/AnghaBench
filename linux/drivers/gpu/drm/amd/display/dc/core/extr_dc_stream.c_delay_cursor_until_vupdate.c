
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_ctx {struct dc_stream_state* stream; } ;
struct TYPE_6__ {int h_total; int pix_clk_100hz; } ;
struct dc_stream_state {TYPE_3__ timing; TYPE_2__* ctx; } ;
struct dc {int dummy; } ;
struct TYPE_4__ {scalar_t__ chip_family; int hw_internal_rev; } ;
struct TYPE_5__ {TYPE_1__ asic_id; } ;


 scalar_t__ ASICREV_IS_RAVEN (int ) ;
 scalar_t__ FAMILY_RV ;
 int dc_stream_get_crtc_position (struct dc*,struct dc_stream_state**,int,unsigned int*,unsigned int*) ;
 unsigned int get_vupdate_offset_from_vsync (struct pipe_ctx*) ;
 int udelay (unsigned int) ;

__attribute__((used)) static void delay_cursor_until_vupdate(struct pipe_ctx *pipe_ctx, struct dc *dc)
{
}
