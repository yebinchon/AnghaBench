
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_channel {unsigned int id; int alt_si; int src; int type; } ;
struct stm32_dfsdm {struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int DFSDM_CHCFGR1 (unsigned int) ;
 int DFSDM_CHCFGR1_CHINSEL (int ) ;
 int DFSDM_CHCFGR1_CHINSEL_MASK ;
 int DFSDM_CHCFGR1_SITP (int ) ;
 int DFSDM_CHCFGR1_SITP_MASK ;
 int DFSDM_CHCFGR1_SPICKSEL (int ) ;
 int DFSDM_CHCFGR1_SPICKSEL_MASK ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int stm32_dfsdm_chan_configure(struct stm32_dfsdm *dfsdm,
          struct stm32_dfsdm_channel *ch)
{
 unsigned int id = ch->id;
 struct regmap *regmap = dfsdm->regmap;
 int ret;

 ret = regmap_update_bits(regmap, DFSDM_CHCFGR1(id),
     DFSDM_CHCFGR1_SITP_MASK,
     DFSDM_CHCFGR1_SITP(ch->type));
 if (ret < 0)
  return ret;
 ret = regmap_update_bits(regmap, DFSDM_CHCFGR1(id),
     DFSDM_CHCFGR1_SPICKSEL_MASK,
     DFSDM_CHCFGR1_SPICKSEL(ch->src));
 if (ret < 0)
  return ret;
 return regmap_update_bits(regmap, DFSDM_CHCFGR1(id),
      DFSDM_CHCFGR1_CHINSEL_MASK,
      DFSDM_CHCFGR1_CHINSEL(ch->alt_si));
}
