
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mn88443x_priv {TYPE_1__* spec; int reset_gpio; int mclk; struct regmap* regmap_t; } ;
struct TYPE_2__ {scalar_t__ primary; } ;


 int HIZSET1 ;
 int HIZSET2 ;
 int HIZSET3 ;
 int OUTCSET ;
 int OUTCSET_CHDRV_8MA ;
 int PLDWSET ;
 int PLDWSET_NORMAL ;
 int clk_prepare_enable (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regmap_write (struct regmap*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mn88443x_cmn_power_on(struct mn88443x_priv *chip)
{
 struct regmap *r_t = chip->regmap_t;

 clk_prepare_enable(chip->mclk);

 gpiod_set_value_cansleep(chip->reset_gpio, 1);
 usleep_range(100, 1000);
 gpiod_set_value_cansleep(chip->reset_gpio, 0);

 if (chip->spec->primary) {
  regmap_write(r_t, OUTCSET, OUTCSET_CHDRV_8MA);
  regmap_write(r_t, PLDWSET, PLDWSET_NORMAL);
  regmap_write(r_t, HIZSET1, 0x80);
  regmap_write(r_t, HIZSET2, 0xe0);
 } else {
  regmap_write(r_t, HIZSET3, 0x8f);
 }
}
