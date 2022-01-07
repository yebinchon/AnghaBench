
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct regmap {int dummy; } ;


 int DE3_BLD_BASE ;
 int SUN50I_MIXER_BLEND_CSC_CTL (int ) ;
 scalar_t__ SUN50I_MIXER_BLEND_CSC_CTL_EN (int) ;
 int regmap_update_bits (struct regmap*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sun8i_de3_ccsc_enable(struct regmap *map, int layer, bool enable)
{
 u32 val, mask;

 mask = SUN50I_MIXER_BLEND_CSC_CTL_EN(layer);

 if (enable)
  val = mask;
 else
  val = 0;

 regmap_update_bits(map, SUN50I_MIXER_BLEND_CSC_CTL(DE3_BLD_BASE),
      mask, val);
}
