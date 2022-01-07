
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_pool {int pipe_count; TYPE_2__* mpc; } ;
struct mpcc_state {int opp_id; int idle; int overlap_only; int pre_multiplied_alpha; int alpha_mode; int mode; int bot_mpcc_id; int dpp_id; int member_0; } ;
struct dc {struct resource_pool* res_pool; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* read_mpcc_state ) (TYPE_2__*,int,struct mpcc_state*) ;} ;


 unsigned int snprintf_count (char*,unsigned int,char*,...) ;
 int stub1 (TYPE_2__*,int,struct mpcc_state*) ;

__attribute__((used)) static unsigned int dcn10_get_mpcc_states(struct dc *dc, char *pBuf, unsigned int bufSize)
{
 struct resource_pool *pool = dc->res_pool;
 int i;

 unsigned int chars_printed = 0;
 unsigned int remaining_buffer = bufSize;

 chars_printed = snprintf_count(pBuf, remaining_buffer, "instance,opp,dpp,mpccbot,mode,alpha_mode,premult,overlap_only,idle\n");
 remaining_buffer -= chars_printed;
 pBuf += chars_printed;

 for (i = 0; i < pool->pipe_count; i++) {
  struct mpcc_state s = {0};

  pool->mpc->funcs->read_mpcc_state(pool->mpc, i, &s);

  if (s.opp_id != 0xf) {
   chars_printed = snprintf_count(pBuf, remaining_buffer, "%x,%x,%x,%x,%x,%x,%x,%x,%x\n",
    i, s.opp_id, s.dpp_id, s.bot_mpcc_id,
    s.mode, s.alpha_mode, s.pre_multiplied_alpha, s.overlap_only,
    s.idle);

   remaining_buffer -= chars_printed;
   pBuf += chars_printed;
  }
 }

 return bufSize - remaining_buffer;
}
