
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int content_desc_addr; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct icp_qat_fw_comn_req_hdr_cd_pars {TYPE_2__ u; } ;
struct icp_qat_fw_la_bulk_req {struct icp_qat_fw_comn_req_hdr_cd_pars cd_pars; } ;
struct qat_alg_ablkcipher_ctx {int enc_cd_paddr; struct icp_qat_fw_la_bulk_req enc_fw_req; struct icp_qat_hw_cipher_algo_blk* enc_cd; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_3__ cipher_config; } ;
struct icp_qat_hw_cipher_algo_blk {TYPE_4__ aes; } ;


 int QAT_AES_HW_CONFIG_ENC (int,int) ;
 int qat_alg_ablkcipher_init_com (struct qat_alg_ablkcipher_ctx*,struct icp_qat_fw_la_bulk_req*,struct icp_qat_hw_cipher_algo_blk*,int const*,unsigned int) ;

__attribute__((used)) static void qat_alg_ablkcipher_init_enc(struct qat_alg_ablkcipher_ctx *ctx,
     int alg, const uint8_t *key,
     unsigned int keylen, int mode)
{
 struct icp_qat_hw_cipher_algo_blk *enc_cd = ctx->enc_cd;
 struct icp_qat_fw_la_bulk_req *req = &ctx->enc_fw_req;
 struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req->cd_pars;

 qat_alg_ablkcipher_init_com(ctx, req, enc_cd, key, keylen);
 cd_pars->u.s.content_desc_addr = ctx->enc_cd_paddr;
 enc_cd->aes.cipher_config.val = QAT_AES_HW_CONFIG_ENC(alg, mode);
}
