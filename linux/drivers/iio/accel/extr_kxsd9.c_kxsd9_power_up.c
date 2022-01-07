
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int scale; int map; int dev; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int KXSD9_CTRL_B_ENABLE ;
 int KXSD9_CTRL_C_LP_1000HZ ;
 int KXSD9_CTRL_C_MOT_LAT ;
 int KXSD9_CTRL_C_MOT_LEV ;
 int KXSD9_REG_CTRL_B ;
 int KXSD9_REG_CTRL_C ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int kxsd9_power_up(struct kxsd9_state *st)
{
 int ret;


 ret = regulator_bulk_enable(ARRAY_SIZE(st->regs), st->regs);
 if (ret) {
  dev_err(st->dev, "Cannot enable regulators\n");
  return ret;
 }


 ret = regmap_write(st->map,
      KXSD9_REG_CTRL_B,
      KXSD9_CTRL_B_ENABLE);
 if (ret)
  return ret;





 ret = regmap_write(st->map,
      KXSD9_REG_CTRL_C,
      KXSD9_CTRL_C_LP_1000HZ |
      KXSD9_CTRL_C_MOT_LEV |
      KXSD9_CTRL_C_MOT_LAT |
      st->scale);
 if (ret)
  return ret;





 msleep(20);

 return 0;
}
