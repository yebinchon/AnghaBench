
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tmp ;
struct stm32_cryp {size_t total_in; size_t total_out; int dev; scalar_t__ total_out_save; int flags; struct scatterlist* out_sg; } ;
struct scatterlist {int dummy; } ;


 int AES_BLOCK_32 ;
 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ CRYP_CR ;
 scalar_t__ CRYP_CSGCMCCM0R ;
 scalar_t__ CRYP_DIN ;
 scalar_t__ CRYP_IMSCR ;
 scalar_t__ CRYP_IV1RR ;
 int CR_AES_CCM ;
 int CR_AES_CTR ;
 int CR_ALGO_MASK ;
 int CR_CRYPEN ;
 int CR_PH_HEADER ;
 int CR_PH_MASK ;
 int FLG_CCM_PADDED_WA ;
 int dev_err (int ,char*) ;
 int memset (int *,int ,int) ;
 int scatterwalk_map_and_copy (int *,struct scatterlist*,scalar_t__,size_t,int ) ;
 void stm32_cryp_finish_req (struct stm32_cryp*,int) ;
 int stm32_cryp_irq_read_data (struct stm32_cryp*) ;
 int stm32_cryp_irq_write_block (struct stm32_cryp*) ;
 int stm32_cryp_read (struct stm32_cryp*,scalar_t__) ;
 int stm32_cryp_wait_busy (struct stm32_cryp*) ;
 int stm32_cryp_wait_output (struct stm32_cryp*) ;
 int stm32_cryp_write (struct stm32_cryp*,scalar_t__,int ) ;

__attribute__((used)) static void stm32_cryp_irq_write_ccm_padded_data(struct stm32_cryp *cryp)
{
 int err = 0;
 u32 cfg, iv1tmp;
 u32 cstmp1[AES_BLOCK_32], cstmp2[AES_BLOCK_32], tmp[AES_BLOCK_32];
 size_t last_total_out, total_in_ori = cryp->total_in;
 struct scatterlist *out_sg_ori = cryp->out_sg;
 unsigned int i;


 cryp->flags |= FLG_CCM_PADDED_WA;


 stm32_cryp_write(cryp, CRYP_IMSCR, 0);

 cfg = stm32_cryp_read(cryp, CRYP_CR);
 cfg &= ~CR_CRYPEN;
 stm32_cryp_write(cryp, CRYP_CR, cfg);


 iv1tmp = stm32_cryp_read(cryp, CRYP_CSGCMCCM0R + 7 * 4);


 for (i = 0; i < ARRAY_SIZE(cstmp1); i++)
  cstmp1[i] = stm32_cryp_read(cryp, CRYP_CSGCMCCM0R + i * 4);


 stm32_cryp_write(cryp, CRYP_IV1RR, iv1tmp);


 cfg &= ~CR_ALGO_MASK;
 cfg |= CR_AES_CTR;
 stm32_cryp_write(cryp, CRYP_CR, cfg);


 cfg |= CR_CRYPEN;
 stm32_cryp_write(cryp, CRYP_CR, cfg);


 stm32_cryp_irq_write_block(cryp);
 cryp->total_in = total_in_ori;
 err = stm32_cryp_wait_output(cryp);
 if (err) {
  dev_err(cryp->dev, "Timeout (wite ccm padded data)\n");
  return stm32_cryp_finish_req(cryp, err);
 }


 last_total_out = cryp->total_out;
 stm32_cryp_irq_read_data(cryp);

 memset(tmp, 0, sizeof(tmp));
 scatterwalk_map_and_copy(tmp, out_sg_ori,
     cryp->total_out_save - last_total_out,
     last_total_out, 0);


 for (i = 0; i < ARRAY_SIZE(cstmp2); i++)
  cstmp2[i] = stm32_cryp_read(cryp, CRYP_CSGCMCCM0R + i * 4);


 cfg &= ~CR_ALGO_MASK;
 cfg |= CR_AES_CCM;
 stm32_cryp_write(cryp, CRYP_CR, cfg);


 cfg &= ~CR_PH_MASK;
 cfg |= CR_PH_HEADER;
 stm32_cryp_write(cryp, CRYP_CR, cfg);


 for (i = 0; i < ARRAY_SIZE(tmp); i++) {
  tmp[i] ^= cstmp1[i];
  tmp[i] ^= cstmp2[i];
  stm32_cryp_write(cryp, CRYP_DIN, tmp[i]);
 }


 err = stm32_cryp_wait_busy(cryp);
 if (err)
  dev_err(cryp->dev, "Timeout (wite ccm padded data)\n");


 stm32_cryp_finish_req(cryp, err);
}
