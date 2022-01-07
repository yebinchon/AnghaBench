
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct crypto_tfm {int dummy; } ;
struct atmel_tdes_dev {int dma_size; int flags; int dev; } ;
struct atmel_tdes_ctx {struct atmel_tdes_dev* dd; } ;
typedef int dma_addr_t ;


 int DIV_ROUND_UP (int,int) ;
 int DMA_TO_DEVICE ;
 int TDES_FLAGS_CFB ;
 int TDES_FLAGS_CFB16 ;
 int TDES_FLAGS_CFB8 ;
 int TDES_FLAGS_FAST ;
 int TDES_IER ;
 int TDES_INT_ENDRX ;
 int TDES_PTCR ;
 int TDES_PTCR_RXTDIS ;
 int TDES_PTCR_RXTEN ;
 int TDES_PTCR_TXTDIS ;
 int TDES_PTCR_TXTEN ;
 int TDES_RCR ;
 int TDES_RPR ;
 int TDES_TCR ;
 int TDES_TPR ;
 int atmel_tdes_write (struct atmel_tdes_dev*,int ,int) ;
 struct atmel_tdes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dma_sync_single_for_device (int ,int,int,int ) ;

__attribute__((used)) static int atmel_tdes_crypt_pdc(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
          dma_addr_t dma_addr_out, int length)
{
 struct atmel_tdes_ctx *ctx = crypto_tfm_ctx(tfm);
 struct atmel_tdes_dev *dd = ctx->dd;
 int len32;

 dd->dma_size = length;

 if (!(dd->flags & TDES_FLAGS_FAST)) {
  dma_sync_single_for_device(dd->dev, dma_addr_in, length,
        DMA_TO_DEVICE);
 }

 if ((dd->flags & TDES_FLAGS_CFB) && (dd->flags & TDES_FLAGS_CFB8))
  len32 = DIV_ROUND_UP(length, sizeof(u8));
 else if ((dd->flags & TDES_FLAGS_CFB) && (dd->flags & TDES_FLAGS_CFB16))
  len32 = DIV_ROUND_UP(length, sizeof(u16));
 else
  len32 = DIV_ROUND_UP(length, sizeof(u32));

 atmel_tdes_write(dd, TDES_PTCR, TDES_PTCR_TXTDIS|TDES_PTCR_RXTDIS);
 atmel_tdes_write(dd, TDES_TPR, dma_addr_in);
 atmel_tdes_write(dd, TDES_TCR, len32);
 atmel_tdes_write(dd, TDES_RPR, dma_addr_out);
 atmel_tdes_write(dd, TDES_RCR, len32);


 atmel_tdes_write(dd, TDES_IER, TDES_INT_ENDRX);


 atmel_tdes_write(dd, TDES_PTCR, TDES_PTCR_TXTEN | TDES_PTCR_RXTEN);

 return 0;
}
