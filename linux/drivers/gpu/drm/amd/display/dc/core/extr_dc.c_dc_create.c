
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc_init_data {int dummy; } ;
struct TYPE_8__ {int dmcu_version; int dc_ver; } ;
struct TYPE_7__ {int linear_pitch_alignment; int max_audios; int max_links; int max_streams; } ;
struct TYPE_6__ {int (* init_hw ) (struct dc*) ;} ;
struct dc {int build_id; TYPE_5__* res_pool; TYPE_3__ versions; TYPE_2__ caps; int link_count; TYPE_1__ hwss; } ;
struct TYPE_10__ {unsigned int pipe_count; scalar_t__ underlay_pipe_index; TYPE_4__* dmcu; int audio_count; int stream_enc_count; } ;
struct TYPE_9__ {int dmcu_version; } ;


 int DC_BUILD_ID ;
 int DC_LOG_DC (char*) ;
 int DC_VER ;
 int GFP_KERNEL ;
 scalar_t__ NO_UNDERLAY_PIPE ;
 int construct (struct dc*,struct dc_init_data const*) ;
 int kfree (struct dc*) ;
 struct dc* kzalloc (int,int ) ;
 int min (unsigned int,int ) ;
 int stub1 (struct dc*) ;

struct dc *dc_create(const struct dc_init_data *init_params)
{
 struct dc *dc = kzalloc(sizeof(*dc), GFP_KERNEL);
 unsigned int full_pipe_count;

 if (((void*)0) == dc)
  goto alloc_fail;

 if (0 == construct(dc, init_params))
  goto construct_fail;


 dc->hwss.init_hw(dc);

 full_pipe_count = dc->res_pool->pipe_count;
 if (dc->res_pool->underlay_pipe_index != NO_UNDERLAY_PIPE)
  full_pipe_count--;
 dc->caps.max_streams = min(
   full_pipe_count,
   dc->res_pool->stream_enc_count);

 dc->caps.max_links = dc->link_count;
 dc->caps.max_audios = dc->res_pool->audio_count;
 dc->caps.linear_pitch_alignment = 64;


 dc->versions.dc_ver = DC_VER;

 if (dc->res_pool->dmcu != ((void*)0))
  dc->versions.dmcu_version = dc->res_pool->dmcu->dmcu_version;

 dc->build_id = DC_BUILD_ID;

 DC_LOG_DC("Display Core initialized\n");



 return dc;

construct_fail:
 kfree(dc);

alloc_fail:
 return ((void*)0);
}
