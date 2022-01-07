
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto4xx_device {scalar_t__ ce_base; } ;


 scalar_t__ CRYPTO4XX_PRNG_CTRL ;
 scalar_t__ CRYPTO4XX_PRNG_RES_0 ;
 scalar_t__ CRYPTO4XX_PRNG_RES_1 ;
 scalar_t__ CRYPTO4XX_PRNG_STAT ;
 int CRYPTO4XX_PRNG_STAT_BUSY ;
 int ETIMEDOUT ;
 int PPC4XX_PRNG_CTRL_AUTO_EN ;
 int memcpy (int *,int **,unsigned int) ;
 int readl (scalar_t__) ;
 int readl_be (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ppc4xx_prng_data_read(struct crypto4xx_device *dev,
     u8 *data, unsigned int max)
{
 unsigned int i, curr = 0;
 u32 val[2];

 do {

  writel(PPC4XX_PRNG_CTRL_AUTO_EN,
         dev->ce_base + CRYPTO4XX_PRNG_CTRL);

  for (i = 0; i < 1024; i++) {

   if ((readl(dev->ce_base + CRYPTO4XX_PRNG_STAT) &
        CRYPTO4XX_PRNG_STAT_BUSY))
    continue;

   val[0] = readl_be(dev->ce_base + CRYPTO4XX_PRNG_RES_0);
   val[1] = readl_be(dev->ce_base + CRYPTO4XX_PRNG_RES_1);
   break;
  }
  if (i == 1024)
   return -ETIMEDOUT;

  if ((max - curr) >= 8) {
   memcpy(data, &val, 8);
   data += 8;
   curr += 8;
  } else {

   memcpy(data, &val, max - curr);
   break;
  }
 } while (curr < max);

 return curr;
}
