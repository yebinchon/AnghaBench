
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_hwseq {TYPE_1__* masks; } ;
typedef enum blnd_mode { ____Placeholder_blnd_mode } blnd_mode ;
struct TYPE_2__ {scalar_t__ BLND_ALPHA_MODE; } ;


 int BLNDV_CONTROL ;
 int BLND_ALPHA_MODE ;
 int * BLND_CONTROL ;
 int BLND_FEEDTHROUGH_EN ;
 int BLND_MODE ;



 int BLND_MULTIPLIED_MODE ;
 int REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;

void dce_set_blender_mode(struct dce_hwseq *hws,
 unsigned int blnd_inst,
 enum blnd_mode mode)
{
 uint32_t feedthrough = 1;
 uint32_t blnd_mode = 0;
 uint32_t multiplied_mode = 0;
 uint32_t alpha_mode = 2;

 switch (mode) {
 case 128:
  feedthrough = 0;
  blnd_mode = 1;
  alpha_mode = 0;
  break;
 case 130:
  feedthrough = 0;
  blnd_mode = 2;
  alpha_mode = 0;
  multiplied_mode = 1;
  break;
 case 129:
 default:
  if (REG(BLND_CONTROL[blnd_inst]) == REG(BLNDV_CONTROL) ||
    blnd_inst == 0)
   feedthrough = 0;
  break;
 }

 REG_UPDATE(BLND_CONTROL[blnd_inst],
  BLND_MODE, blnd_mode);

 if (hws->masks->BLND_ALPHA_MODE != 0) {
  REG_UPDATE_3(BLND_CONTROL[blnd_inst],
   BLND_FEEDTHROUGH_EN, feedthrough,
   BLND_ALPHA_MODE, alpha_mode,
   BLND_MULTIPLIED_MODE, multiplied_mode);
 }
}
