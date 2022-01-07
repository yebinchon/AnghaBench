
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mac_iv; int mac_digest; int mac_src_p; int enc_iv; int enc_key_p; int enc_p; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;
struct mv_cesa_engine {int sram_dma; } ;


 int CESA_SA_DESC_CRYPT_DATA (int) ;
 int CESA_SA_DESC_CRYPT_IV (int) ;
 int CESA_SA_DESC_CRYPT_KEY (int) ;
 int CESA_SA_DESC_MAC_DATA (int) ;
 int CESA_SA_DESC_MAC_DATA_MSK ;
 int CESA_SA_DESC_MAC_DIGEST (int) ;
 int CESA_SA_DESC_MAC_DIGEST_MSK ;
 int CESA_SA_DESC_MAC_IV (int) ;
 int CESA_SA_SRAM_MSK ;

__attribute__((used)) static inline void mv_cesa_adjust_op(struct mv_cesa_engine *engine,
         struct mv_cesa_op_ctx *op)
{
 u32 offset = engine->sram_dma & CESA_SA_SRAM_MSK;

 op->desc.enc_p = CESA_SA_DESC_CRYPT_DATA(offset);
 op->desc.enc_key_p = CESA_SA_DESC_CRYPT_KEY(offset);
 op->desc.enc_iv = CESA_SA_DESC_CRYPT_IV(offset);
 op->desc.mac_src_p &= ~CESA_SA_DESC_MAC_DATA_MSK;
 op->desc.mac_src_p |= CESA_SA_DESC_MAC_DATA(offset);
 op->desc.mac_digest &= ~CESA_SA_DESC_MAC_DIGEST_MSK;
 op->desc.mac_digest |= CESA_SA_DESC_MAC_DIGEST(offset);
 op->desc.mac_iv = CESA_SA_DESC_MAC_IV(offset);
}
