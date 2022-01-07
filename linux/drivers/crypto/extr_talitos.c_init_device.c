
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int num_channels; int features; scalar_t__ reg_mdeu; scalar_t__ reg; scalar_t__ reg_deu; } ;
struct device {int dummy; } ;


 int TALITOS1_DEUICR_KPE ;
 int TALITOS1_IMR_INIT ;
 int TALITOS1_IMR_LO_INIT ;
 int TALITOS2_IMR_INIT ;
 int TALITOS2_IMR_LO_INIT ;
 scalar_t__ TALITOS_EUICR ;
 scalar_t__ TALITOS_EUICR_LO ;
 int TALITOS_FTR_HW_AUTH_CHECK ;
 scalar_t__ TALITOS_IMR ;
 scalar_t__ TALITOS_IMR_LO ;
 int TALITOS_MDEUICR_LO_ICE ;
 int clrbits32 (scalar_t__,int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int reset_channel (struct device*,int) ;
 int reset_device (struct device*) ;
 int setbits32 (scalar_t__,int ) ;

__attribute__((used)) static int init_device(struct device *dev)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int ch, err;
 bool is_sec1 = has_ftr_sec1(priv);







 err = reset_device(dev);
 if (err)
  return err;

 err = reset_device(dev);
 if (err)
  return err;


 for (ch = 0; ch < priv->num_channels; ch++) {
  err = reset_channel(dev, ch);
  if (err)
   return err;
 }


 if (is_sec1) {
  clrbits32(priv->reg + TALITOS_IMR, TALITOS1_IMR_INIT);
  clrbits32(priv->reg + TALITOS_IMR_LO, TALITOS1_IMR_LO_INIT);

  setbits32(priv->reg_deu + TALITOS_EUICR, TALITOS1_DEUICR_KPE);
 } else {
  setbits32(priv->reg + TALITOS_IMR, TALITOS2_IMR_INIT);
  setbits32(priv->reg + TALITOS_IMR_LO, TALITOS2_IMR_LO_INIT);
 }


 if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
  setbits32(priv->reg_mdeu + TALITOS_EUICR_LO,
            TALITOS_MDEUICR_LO_ICE);

 return 0;
}
