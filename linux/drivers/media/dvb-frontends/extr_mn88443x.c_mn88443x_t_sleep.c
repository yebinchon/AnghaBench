
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mn88443x_priv {struct regmap* regmap_t; } ;


 int PWDSET ;
 int PWDSET_OFDMPD_DOWN ;
 int PWDSET_OFDMPD_MASK ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void mn88443x_t_sleep(struct mn88443x_priv *chip)
{
 struct regmap *r_t = chip->regmap_t;

 regmap_update_bits(r_t, PWDSET, PWDSET_OFDMPD_MASK,
      PWDSET_OFDMPD_DOWN);
}
