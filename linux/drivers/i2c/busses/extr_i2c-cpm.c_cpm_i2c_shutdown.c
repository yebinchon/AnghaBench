
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpm_i2c {int version; int i2c_addr; TYPE_2__* i2c_ram; TYPE_2__* i2c_reg; int dp_addr; int * txdma; int * txbuf; TYPE_1__* ofdev; int * rxdma; int * rxbuf; int adap; int irq; } ;
struct TYPE_4__ {int i2cer; int i2cmr; int i2mod; } ;
struct TYPE_3__ {int dev; } ;


 int CPM_MAXBD ;
 scalar_t__ CPM_MAX_READ ;
 int I2MOD_EN ;
 int clrbits8 (int *,int ) ;
 int cpm_muram_free (int ) ;
 int dma_free_coherent (int *,scalar_t__,int ,int ) ;
 int free_irq (int ,int *) ;
 int iounmap (TYPE_2__*) ;
 int out_8 (int *,int) ;

__attribute__((used)) static void cpm_i2c_shutdown(struct cpm_i2c *cpm)
{
 int i;


 clrbits8(&cpm->i2c_reg->i2mod, I2MOD_EN);


 out_8(&cpm->i2c_reg->i2cmr, 0);
 out_8(&cpm->i2c_reg->i2cer, 0xff);

 free_irq(cpm->irq, &cpm->adap);


 for (i = 0; i < CPM_MAXBD; i++) {
  dma_free_coherent(&cpm->ofdev->dev, CPM_MAX_READ + 1,
   cpm->rxbuf[i], cpm->rxdma[i]);
  dma_free_coherent(&cpm->ofdev->dev, CPM_MAX_READ + 1,
   cpm->txbuf[i], cpm->txdma[i]);
 }

 cpm_muram_free(cpm->dp_addr);
 iounmap(cpm->i2c_reg);

 if ((cpm->version == 1) && (!cpm->i2c_addr))
  iounmap(cpm->i2c_ram);
 if (cpm->version == 2)
  cpm_muram_free(cpm->i2c_addr);
}
