
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmstb_i2c_dev {TYPE_1__* bsc_regmap; } ;
struct TYPE_2__ {int ctl_reg; } ;


 int BSC_CTL_REG_INT_EN_MASK ;
 int barrier () ;
 int bsc_writel (struct brcmstb_i2c_dev*,int ,int ) ;
 int ctl_reg ;

__attribute__((used)) static void brcmstb_i2c_enable_disable_irq(struct brcmstb_i2c_dev *dev,
        bool int_en)
{

 if (int_en)

  dev->bsc_regmap->ctl_reg |= BSC_CTL_REG_INT_EN_MASK;
 else

  dev->bsc_regmap->ctl_reg &= ~BSC_CTL_REG_INT_EN_MASK;

 barrier();
 bsc_writel(dev, dev->bsc_regmap->ctl_reg, ctl_reg);
}
