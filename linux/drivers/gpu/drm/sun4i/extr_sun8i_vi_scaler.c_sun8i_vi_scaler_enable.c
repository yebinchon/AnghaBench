
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regs; } ;
struct sun8i_mixer {TYPE_1__ engine; } ;


 int SUN8I_SCALER_VSU_CTRL (int) ;
 int SUN8I_SCALER_VSU_CTRL_COEFF_RDY ;
 int SUN8I_SCALER_VSU_CTRL_EN ;
 int regmap_write (int ,int ,int) ;
 int sun8i_vi_scaler_base (struct sun8i_mixer*,int) ;

void sun8i_vi_scaler_enable(struct sun8i_mixer *mixer, int layer, bool enable)
{
 u32 val, base;

 base = sun8i_vi_scaler_base(mixer, layer);

 if (enable)
  val = SUN8I_SCALER_VSU_CTRL_EN |
        SUN8I_SCALER_VSU_CTRL_COEFF_RDY;
 else
  val = 0;

 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CTRL(base), val);
}
