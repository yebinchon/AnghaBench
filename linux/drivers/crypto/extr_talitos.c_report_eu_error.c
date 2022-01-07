
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct talitos_private {TYPE_1__* chan; scalar_t__ reg_crcu; scalar_t__ reg_mdeu; scalar_t__ reg_pkeu; scalar_t__ reg_aesu; scalar_t__ reg_rngu; scalar_t__ reg_deu; scalar_t__ reg_afeu; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;







 int DESC_HDR_SEL0_MASK ;





 int DESC_HDR_SEL1_MASK ;


 scalar_t__ TALITOS_DESCBUF ;
 scalar_t__ TALITOS_DESCBUF_LO ;
 scalar_t__ TALITOS_EUISR ;
 scalar_t__ TALITOS_EUISR_LO ;
 scalar_t__ TALITOS_ISR ;
 scalar_t__ TALITOS_ISR_LO ;
 int dev_err (struct device*,char*,int,int) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static void report_eu_error(struct device *dev, int ch, u32 desc_hdr)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int i;

 if (!desc_hdr)
  desc_hdr = in_be32(priv->chan[ch].reg + TALITOS_DESCBUF);

 switch (desc_hdr & DESC_HDR_SEL0_MASK) {
 case 138:
  dev_err(dev, "AFEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_afeu + TALITOS_EUISR),
   in_be32(priv->reg_afeu + TALITOS_EUISR_LO));
  break;
 case 136:
  dev_err(dev, "DEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_deu + TALITOS_EUISR),
   in_be32(priv->reg_deu + TALITOS_EUISR_LO));
  break;
 case 134:
 case 133:
  dev_err(dev, "MDEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_mdeu + TALITOS_EUISR),
   in_be32(priv->reg_mdeu + TALITOS_EUISR_LO));
  break;
 case 131:
  dev_err(dev, "RNGUISR 0x%08x_%08x\n",
   in_be32(priv->reg_rngu + TALITOS_ISR),
   in_be32(priv->reg_rngu + TALITOS_ISR_LO));
  break;
 case 132:
  dev_err(dev, "PKEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_pkeu + TALITOS_EUISR),
   in_be32(priv->reg_pkeu + TALITOS_EUISR_LO));
  break;
 case 139:
  dev_err(dev, "AESUISR 0x%08x_%08x\n",
   in_be32(priv->reg_aesu + TALITOS_EUISR),
   in_be32(priv->reg_aesu + TALITOS_EUISR_LO));
  break;
 case 137:
  dev_err(dev, "CRCUISR 0x%08x_%08x\n",
   in_be32(priv->reg_crcu + TALITOS_EUISR),
   in_be32(priv->reg_crcu + TALITOS_EUISR_LO));
  break;
 case 135:
  dev_err(dev, "KEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_pkeu + TALITOS_EUISR),
   in_be32(priv->reg_pkeu + TALITOS_EUISR_LO));
  break;
 }

 switch (desc_hdr & DESC_HDR_SEL1_MASK) {
 case 129:
 case 128:
  dev_err(dev, "MDEUISR 0x%08x_%08x\n",
   in_be32(priv->reg_mdeu + TALITOS_EUISR),
   in_be32(priv->reg_mdeu + TALITOS_EUISR_LO));
  break;
 case 130:
  dev_err(dev, "CRCUISR 0x%08x_%08x\n",
   in_be32(priv->reg_crcu + TALITOS_EUISR),
   in_be32(priv->reg_crcu + TALITOS_EUISR_LO));
  break;
 }

 for (i = 0; i < 8; i++)
  dev_err(dev, "DESCBUF 0x%08x_%08x\n",
   in_be32(priv->chan[ch].reg + TALITOS_DESCBUF + 8*i),
   in_be32(priv->chan[ch].reg + TALITOS_DESCBUF_LO + 8*i));
}
