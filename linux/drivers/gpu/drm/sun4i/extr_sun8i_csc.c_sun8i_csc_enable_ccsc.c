
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int regs; } ;
struct sun8i_mixer {TYPE_2__ engine; TYPE_1__* cfg; } ;
struct TYPE_3__ {size_t ccsc; scalar_t__ is_de3; } ;


 int ** ccsc_base ;
 int sun8i_csc_enable (int ,int ,int) ;
 int sun8i_de3_ccsc_enable (int ,int,int) ;

void sun8i_csc_enable_ccsc(struct sun8i_mixer *mixer, int layer, bool enable)
{
 u32 base;

 if (mixer->cfg->is_de3) {
  sun8i_de3_ccsc_enable(mixer->engine.regs, layer, enable);
  return;
 }

 base = ccsc_base[mixer->cfg->ccsc][layer];

 sun8i_csc_enable(mixer->engine.regs, base, enable);
}
