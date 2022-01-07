
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_private {int features; TYPE_1__* chan; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int EIO ;
 int TALITOS1_CCCR_LO_RESET ;
 int TALITOS2_CCCR_RESET ;
 scalar_t__ TALITOS_CCCR ;
 scalar_t__ TALITOS_CCCR_LO ;
 int TALITOS_CCCR_LO_CDIE ;
 int TALITOS_CCCR_LO_CDWE ;
 int TALITOS_CCCR_LO_EAE ;
 int TALITOS_CCCR_LO_IWSE ;
 int TALITOS_CCCR_LO_NE ;
 int TALITOS_FTR_HW_AUTH_CHECK ;
 unsigned int TALITOS_TIMEOUT ;
 int cpu_relax () ;
 int dev_err (struct device*,char*,int) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int in_be32 (scalar_t__) ;
 int setbits32 (scalar_t__,int) ;

__attribute__((used)) static int reset_channel(struct device *dev, int ch)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 unsigned int timeout = TALITOS_TIMEOUT;
 bool is_sec1 = has_ftr_sec1(priv);

 if (is_sec1) {
  setbits32(priv->chan[ch].reg + TALITOS_CCCR_LO,
     TALITOS1_CCCR_LO_RESET);

  while ((in_be32(priv->chan[ch].reg + TALITOS_CCCR_LO) &
   TALITOS1_CCCR_LO_RESET) && --timeout)
   cpu_relax();
 } else {
  setbits32(priv->chan[ch].reg + TALITOS_CCCR,
     TALITOS2_CCCR_RESET);

  while ((in_be32(priv->chan[ch].reg + TALITOS_CCCR) &
   TALITOS2_CCCR_RESET) && --timeout)
   cpu_relax();
 }

 if (timeout == 0) {
  dev_err(dev, "failed to reset channel %d\n", ch);
  return -EIO;
 }


 setbits32(priv->chan[ch].reg + TALITOS_CCCR_LO, TALITOS_CCCR_LO_EAE |
    TALITOS_CCCR_LO_CDWE | TALITOS_CCCR_LO_CDIE);

 if (is_sec1)
  setbits32(priv->chan[ch].reg + TALITOS_CCCR_LO,
     TALITOS_CCCR_LO_NE);


 if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
  setbits32(priv->chan[ch].reg + TALITOS_CCCR_LO,
            TALITOS_CCCR_LO_IWSE);

 return 0;
}
