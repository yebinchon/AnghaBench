
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int socclk_khz; int fclk_khz; int dcfclk_deep_sleep_khz; int dcfclk_khz; int dppclk_khz; int dispclk_khz; } ;
struct TYPE_8__ {TYPE_2__ clk; } ;
struct TYPE_9__ {TYPE_3__ dcn; } ;
struct TYPE_10__ {TYPE_4__ bw; } ;
struct dc_state {TYPE_5__ bw_ctx; } ;
struct dc {TYPE_1__* ctx; } ;
struct TYPE_6__ {int logger; } ;


 int CLOCK_TRACE (char*,int ,int ,int ,int ,int ,int ) ;
 int DC_LOGGER_INIT (int ) ;

void context_clock_trace(
  struct dc *dc,
  struct dc_state *context)
{
}
