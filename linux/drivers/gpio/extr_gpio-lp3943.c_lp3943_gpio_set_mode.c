
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lp3943_reg_cfg {size_t shift; int mask; int reg; } ;
struct lp3943_gpio {struct lp3943* lp3943; } ;
struct lp3943 {struct lp3943_reg_cfg* mux_cfg; } ;


 int lp3943_update_bits (struct lp3943*,int ,int ,size_t) ;

__attribute__((used)) static int lp3943_gpio_set_mode(struct lp3943_gpio *lp3943_gpio, u8 offset,
    u8 val)
{
 struct lp3943 *lp3943 = lp3943_gpio->lp3943;
 const struct lp3943_reg_cfg *mux = lp3943->mux_cfg;

 return lp3943_update_bits(lp3943, mux[offset].reg, mux[offset].mask,
      val << mux[offset].shift);
}
