
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {scalar_t__ reg_rngu; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ TALITOS_EUDSR_LO ;
 scalar_t__ TALITOS_EURCR_LO ;
 scalar_t__ TALITOS_EUSR_LO ;
 int TALITOS_RNGURCR_LO_SR ;
 int TALITOS_RNGUSR_LO_RD ;
 unsigned int TALITOS_TIMEOUT ;
 int cpu_relax () ;
 int dev_err (struct device*,char*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;
 int setbits32 (scalar_t__,int ) ;

__attribute__((used)) static int talitos_rng_init(struct hwrng *rng)
{
 struct device *dev = (struct device *)rng->priv;
 struct talitos_private *priv = dev_get_drvdata(dev);
 unsigned int timeout = TALITOS_TIMEOUT;

 setbits32(priv->reg_rngu + TALITOS_EURCR_LO, TALITOS_RNGURCR_LO_SR);
 while (!(in_be32(priv->reg_rngu + TALITOS_EUSR_LO)
   & TALITOS_RNGUSR_LO_RD)
        && --timeout)
  cpu_relax();
 if (timeout == 0) {
  dev_err(dev, "failed to reset rng hw\n");
  return -ENODEV;
 }


 setbits32(priv->reg_rngu + TALITOS_EUDSR_LO, 0);

 return 0;
}
