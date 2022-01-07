
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmstb_i2c_dev {TYPE_1__* bsc_regmap; } ;
struct TYPE_2__ {int ctlhi_reg; } ;


 int BSC_CTLHI_REG_DATAREG_SIZE_MASK ;
 int brcmstb_i2c_get_data_regsz (struct brcmstb_i2c_dev*) ;
 int brcmstb_i2c_set_bus_speed (struct brcmstb_i2c_dev*) ;
 int bsc_writel (struct brcmstb_i2c_dev*,int ,int ) ;
 int ctlhi_reg ;

__attribute__((used)) static void brcmstb_i2c_set_bsc_reg_defaults(struct brcmstb_i2c_dev *dev)
{
 if (brcmstb_i2c_get_data_regsz(dev) == sizeof(u32))

  dev->bsc_regmap->ctlhi_reg = BSC_CTLHI_REG_DATAREG_SIZE_MASK;
 else
  dev->bsc_regmap->ctlhi_reg &= ~BSC_CTLHI_REG_DATAREG_SIZE_MASK;

 bsc_writel(dev, dev->bsc_regmap->ctlhi_reg, ctlhi_reg);

 brcmstb_i2c_set_bus_speed(dev);
}
