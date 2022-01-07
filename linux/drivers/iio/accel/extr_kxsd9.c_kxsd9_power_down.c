
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int dev; int regs; int map; } ;


 int ARRAY_SIZE (int ) ;
 int KXSD9_CTRL_B_ENABLE ;
 int KXSD9_REG_CTRL_B ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int kxsd9_power_down(struct kxsd9_state *st)
{
 int ret;







 ret = regmap_update_bits(st->map,
     KXSD9_REG_CTRL_B,
     KXSD9_CTRL_B_ENABLE,
     0);
 if (ret)
  return ret;


 ret = regulator_bulk_disable(ARRAY_SIZE(st->regs), st->regs);
 if (ret) {
  dev_err(st->dev, "Cannot disable regulators\n");
  return ret;
 }

 return 0;
}
