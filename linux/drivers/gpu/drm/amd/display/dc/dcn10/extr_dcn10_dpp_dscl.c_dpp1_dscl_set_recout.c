
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rect {scalar_t__ height; int width; scalar_t__ y; int x; } ;
struct TYPE_8__ {int inst; TYPE_3__* ctx; } ;
struct dcn10_dpp {TYPE_4__ base; } ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_5__ {scalar_t__ visual_confirm; } ;
struct TYPE_6__ {TYPE_1__ debug; } ;


 int RECOUT_HEIGHT ;
 int RECOUT_SIZE ;
 int RECOUT_START ;
 int RECOUT_START_X ;
 int RECOUT_START_Y ;
 int RECOUT_WIDTH ;
 int REG_SET_2 (int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ VISUAL_CONFIRM_DISABLE ;

__attribute__((used)) static void dpp1_dscl_set_recout(
   struct dcn10_dpp *dpp, const struct rect *recout)
{
 int visual_confirm_on = 0;
 if (dpp->base.ctx->dc->debug.visual_confirm != VISUAL_CONFIRM_DISABLE)
  visual_confirm_on = 1;

 REG_SET_2(RECOUT_START, 0,

    RECOUT_START_X, recout->x,

    RECOUT_START_Y, recout->y);

 REG_SET_2(RECOUT_SIZE, 0,

    RECOUT_WIDTH, recout->width,

    RECOUT_HEIGHT, recout->height
    - visual_confirm_on * 4 * (dpp->base.inst + 1));
}
