
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_sink_init_data {struct dc_link* link; int converter_disable_audio; int dongle_max_pix_clk; int sink_signal; } ;
struct dc_sink {int sink_id; int * dc_container_id; int converter_disable_audio; int dongle_max_pix_clk; TYPE_1__* ctx; struct dc_link* link; int sink_signal; } ;
struct dc_link {TYPE_1__* ctx; } ;
struct TYPE_2__ {int dc_sink_id_count; } ;



__attribute__((used)) static bool construct(struct dc_sink *sink, const struct dc_sink_init_data *init_params)
{

 struct dc_link *link = init_params->link;

 if (!link)
  return 0;

 sink->sink_signal = init_params->sink_signal;
 sink->link = link;
 sink->ctx = link->ctx;
 sink->dongle_max_pix_clk = init_params->dongle_max_pix_clk;
 sink->converter_disable_audio = init_params->converter_disable_audio;
 sink->dc_container_id = ((void*)0);
 sink->sink_id = init_params->link->ctx->dc_sink_id_count;


 init_params->link->ctx->dc_sink_id_count++;

 return 1;
}
