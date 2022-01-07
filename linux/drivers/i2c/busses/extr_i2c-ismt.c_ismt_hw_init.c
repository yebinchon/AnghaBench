
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ismt_priv {scalar_t__ smba; int io_rng_dma; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ISMT_DESC_ENTRIES ;
 int ISMT_MCTRL_MEIE ;
 int ISMT_MDS_MASK ;
 scalar_t__ ISMT_MSTR_MCTRL ;
 scalar_t__ ISMT_MSTR_MDBA ;
 scalar_t__ ISMT_MSTR_MDS ;
 scalar_t__ ISMT_MSTR_MSTS ;
 scalar_t__ ISMT_SPGT ;




 int ISMT_SPGT_SPD_MASK ;
 int bus_speed ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void ismt_hw_init(struct ismt_priv *priv)
{
 u32 val;
 struct device *dev = &priv->pci_dev->dev;


 writeq(priv->io_rng_dma, priv->smba + ISMT_MSTR_MDBA);


 writel(ISMT_MCTRL_MEIE, priv->smba + ISMT_MSTR_MCTRL);


 writel(0, priv->smba + ISMT_MSTR_MSTS);


 val = readl(priv->smba + ISMT_MSTR_MDS);
 writel((val & ~ISMT_MDS_MASK) | (ISMT_DESC_ENTRIES - 1),
  priv->smba + ISMT_MSTR_MDS);





 val = readl(priv->smba + ISMT_SPGT);

 switch (bus_speed) {
 case 0:
  break;

 case 80:
  dev_dbg(dev, "Setting SMBus clock to 80 kHz\n");
  writel(((val & ~ISMT_SPGT_SPD_MASK) | 128),
   priv->smba + ISMT_SPGT);
  break;

 case 100:
  dev_dbg(dev, "Setting SMBus clock to 100 kHz\n");
  writel(((val & ~ISMT_SPGT_SPD_MASK) | 131),
   priv->smba + ISMT_SPGT);
  break;

 case 400:
  dev_dbg(dev, "Setting SMBus clock to 400 kHz\n");
  writel(((val & ~ISMT_SPGT_SPD_MASK) | 129),
   priv->smba + ISMT_SPGT);
  break;

 case 1000:
  dev_dbg(dev, "Setting SMBus clock to 1000 kHz\n");
  writel(((val & ~ISMT_SPGT_SPD_MASK) | 130),
   priv->smba + ISMT_SPGT);
  break;

 default:
  dev_warn(dev, "Invalid SMBus clock speed, only 0, 80, 100, 400, and 1000 are valid\n");
  break;
 }

 val = readl(priv->smba + ISMT_SPGT);

 switch (val & ISMT_SPGT_SPD_MASK) {
 case 128:
  bus_speed = 80;
  break;
 case 131:
  bus_speed = 100;
  break;
 case 129:
  bus_speed = 400;
  break;
 case 130:
  bus_speed = 1000;
  break;
 }
 dev_dbg(dev, "SMBus clock is running at %d kHz\n", bus_speed);
}
