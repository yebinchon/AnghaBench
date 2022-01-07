
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timing_generator {TYPE_2__* funcs; } ;
struct dc_stream_state {int timing; struct dc_link* link; } ;
struct dc_link {TYPE_4__* link_enc; } ;
struct dc {TYPE_1__* res_pool; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_8__ {TYPE_3__* funcs; } ;
struct TYPE_7__ {int (* validate_output_with_stream ) (TYPE_4__*,struct dc_stream_state*) ;} ;
struct TYPE_6__ {int (* validate_timing ) (struct timing_generator*,int *) ;} ;
struct TYPE_5__ {struct timing_generator** timing_generators; } ;


 int DC_FAIL_CONTROLLER_VALIDATE ;
 int DC_FAIL_ENC_VALIDATE ;
 int DC_OK ;
 int calculate_phy_pix_clks (struct dc_stream_state*) ;
 int dc_link_validate_mode_timing (struct dc_stream_state*,struct dc_link*,int *) ;
 int stub1 (struct timing_generator*,int *) ;
 int stub2 (TYPE_4__*,struct dc_stream_state*) ;

enum dc_status dc_validate_stream(struct dc *dc, struct dc_stream_state *stream)
{
 struct dc *core_dc = dc;
 struct dc_link *link = stream->link;
 struct timing_generator *tg = core_dc->res_pool->timing_generators[0];
 enum dc_status res = DC_OK;

 calculate_phy_pix_clks(stream);

 if (!tg->funcs->validate_timing(tg, &stream->timing))
  res = DC_FAIL_CONTROLLER_VALIDATE;

 if (res == DC_OK) {
  if (!link->link_enc->funcs->validate_output_with_stream(
      link->link_enc, stream))
   res = DC_FAIL_ENC_VALIDATE;
 }



 if (res == DC_OK)
  res = dc_link_validate_mode_timing(stream,
        link,
        &stream->timing);

 return res;
}
