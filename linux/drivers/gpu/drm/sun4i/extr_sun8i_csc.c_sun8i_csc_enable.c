
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct regmap {int dummy; } ;


 int SUN8I_CSC_CTRL (scalar_t__) ;
 scalar_t__ SUN8I_CSC_CTRL_EN ;
 int regmap_update_bits (struct regmap*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sun8i_csc_enable(struct regmap *map, u32 base, bool enable)
{
 u32 val;

 if (enable)
  val = SUN8I_CSC_CTRL_EN;
 else
  val = 0;

 regmap_update_bits(map, SUN8I_CSC_CTRL(base), SUN8I_CSC_CTRL_EN, val);
}
