
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {scalar_t__ priv; } ;
struct crypto4xx_device {scalar_t__ trng_base; } ;


 scalar_t__ PPC4XX_TRNG_DATA ;
 int in_le32 (scalar_t__) ;

__attribute__((used)) static int ppc4xx_trng_data_read(struct hwrng *rng, u32 *data)
{
 struct crypto4xx_device *dev = (void *)rng->priv;
 *data = in_le32(dev->trng_base + PPC4XX_TRNG_DATA);
 return 4;
}
