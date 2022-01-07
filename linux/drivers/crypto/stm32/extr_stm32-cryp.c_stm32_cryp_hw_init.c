
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct stm32_cryp {int flags; TYPE_3__* req; TYPE_2__* areq; int dev; TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__ info; } ;
struct TYPE_5__ {int assoclen; } ;
struct TYPE_4__ {int keylen; } ;





 int CRYP_CR ;
 int CRYP_IMSCR ;



 int CR_AES_ECB ;

 int CR_AES_KP ;
 int CR_AES_UNKNOWN ;
 int CR_CRYPEN ;
 int CR_DATA8 ;
 int CR_DEC_NOT_ENC ;

 int CR_FFLUSH ;
 int CR_KEY128 ;
 int CR_KEY192 ;
 int CR_KEY256 ;
 int CR_PH_HEADER ;
 int CR_PH_INIT ;
 int CR_PH_PAYLOAD ;

 int EINVAL ;
 int FLG_CCM_PADDED_WA ;
 int dev_err (int ,char*) ;
 scalar_t__ is_decrypt (struct stm32_cryp*) ;
 int pm_runtime_get_sync (int ) ;
 int stm32_cryp_ccm_init (struct stm32_cryp*,int) ;
 int stm32_cryp_gcm_init (struct stm32_cryp*,int) ;
 int stm32_cryp_get_hw_mode (struct stm32_cryp*) ;
 int stm32_cryp_get_input_text_len (struct stm32_cryp*) ;
 int stm32_cryp_hw_write_iv (struct stm32_cryp*,int*) ;
 int stm32_cryp_hw_write_key (struct stm32_cryp*) ;
 int stm32_cryp_wait_busy (struct stm32_cryp*) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int) ;

__attribute__((used)) static int stm32_cryp_hw_init(struct stm32_cryp *cryp)
{
 int ret;
 u32 cfg, hw_mode;

 pm_runtime_get_sync(cryp->dev);


 stm32_cryp_write(cryp, CRYP_IMSCR, 0);


 stm32_cryp_hw_write_key(cryp);


 cfg = CR_DATA8 | CR_FFLUSH;

 switch (cryp->ctx->keylen) {
 case 136:
  cfg |= CR_KEY128;
  break;

 case 135:
  cfg |= CR_KEY192;
  break;

 default:
 case 134:
  cfg |= CR_KEY256;
  break;
 }

 hw_mode = stm32_cryp_get_hw_mode(cryp);
 if (hw_mode == CR_AES_UNKNOWN)
  return -EINVAL;


 if (is_decrypt(cryp) &&
     ((hw_mode == CR_AES_ECB) || (hw_mode == 133))) {
  stm32_cryp_write(cryp, CRYP_CR, cfg | CR_AES_KP | CR_CRYPEN);


  ret = stm32_cryp_wait_busy(cryp);
  if (ret) {
   dev_err(cryp->dev, "Timeout (key preparation)\n");
   return ret;
  }
 }

 cfg |= hw_mode;

 if (is_decrypt(cryp))
  cfg |= CR_DEC_NOT_ENC;


 stm32_cryp_write(cryp, CRYP_CR, cfg);

 switch (hw_mode) {
 case 130:
 case 132:

  if (hw_mode == 132)
   ret = stm32_cryp_ccm_init(cryp, cfg);
  else
   ret = stm32_cryp_gcm_init(cryp, cfg);

  if (ret)
   return ret;


  if (cryp->areq->assoclen) {
   cfg |= CR_PH_HEADER;
  } else if (stm32_cryp_get_input_text_len(cryp)) {
   cfg |= CR_PH_PAYLOAD;
   stm32_cryp_write(cryp, CRYP_CR, cfg);
  } else {
   cfg |= CR_PH_INIT;
  }

  break;

 case 129:
 case 128:
 case 133:
 case 131:
  stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->req->info);
  break;

 default:
  break;
 }


 cfg |= CR_CRYPEN;

 stm32_cryp_write(cryp, CRYP_CR, cfg);

 cryp->flags &= ~FLG_CCM_PADDED_WA;

 return 0;
}
