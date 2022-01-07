
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int val; } ;
struct TYPE_12__ {int key; TYPE_2__ cipher_config; } ;
struct icp_qat_hw_cipher_algo_blk {TYPE_3__ aes; } ;
struct qat_enc {struct icp_qat_hw_cipher_algo_blk cipher; } ;
struct qat_alg_cd {int dummy; } ;
struct icp_qat_fw_comn_req_hdr {int serv_specif_flags; int service_cmd_id; } ;
struct TYPE_17__ {int content_desc_params_sz; int content_desc_addr; } ;
struct TYPE_18__ {TYPE_8__ s; } ;
struct icp_qat_fw_comn_req_hdr_cd_pars {TYPE_9__ u; } ;
struct icp_qat_fw_la_bulk_req {int cd_ctrl; struct icp_qat_fw_comn_req_hdr comn_hdr; struct icp_qat_fw_comn_req_hdr_cd_pars cd_pars; } ;
struct qat_alg_aead_ctx {int qat_hash_alg; int enc_cd_paddr; int hash_tfm; struct icp_qat_fw_la_bulk_req enc_fw_req; TYPE_1__* enc_cd; } ;
struct icp_qat_hw_auth_setup {int dummy; } ;
struct TYPE_14__ {int counter; } ;
struct TYPE_13__ {int config; } ;
struct TYPE_15__ {TYPE_5__ auth_counter; TYPE_4__ auth_config; } ;
struct TYPE_16__ {TYPE_6__ inner_setup; } ;
struct icp_qat_hw_auth_algo_blk {TYPE_7__ sha; } ;
struct icp_qat_fw_cipher_cd_ctrl_hdr {int cipher_key_sz; int cipher_state_sz; int hash_cfg_offset; unsigned int inner_res_sz; unsigned int final_sz; int inner_state1_sz; int inner_state2_sz; int inner_state2_offset; int hash_flags; scalar_t__ cipher_cfg_offset; } ;
struct icp_qat_fw_auth_cd_ctrl_hdr {int cipher_key_sz; int cipher_state_sz; int hash_cfg_offset; unsigned int inner_res_sz; unsigned int final_sz; int inner_state1_sz; int inner_state2_sz; int inner_state2_offset; int hash_flags; scalar_t__ cipher_cfg_offset; } ;
struct crypto_authenc_keys {int enckeylen; int authkeylen; int authkey; int enckey; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_10__ {struct qat_enc qat_enc_cd; } ;


 int AES_BLOCK_SIZE ;
 int EFAULT ;
 int ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED ;
 int ICP_QAT_FW_COMN_CURR_ID_SET (struct icp_qat_fw_cipher_cd_ctrl_hdr*,int ) ;
 int ICP_QAT_FW_COMN_NEXT_ID_SET (struct icp_qat_fw_cipher_cd_ctrl_hdr*,int ) ;
 int ICP_QAT_FW_LA_CMD_CIPHER_HASH ;
 int ICP_QAT_FW_LA_CMP_AUTH_SET (int ,int ) ;
 int ICP_QAT_FW_LA_DIGEST_IN_BUFFER ;
 int ICP_QAT_FW_LA_DIGEST_IN_BUFFER_SET (int ,int ) ;
 int ICP_QAT_FW_LA_NO_CMP_AUTH_RES ;
 int ICP_QAT_FW_LA_RET_AUTH_RES ;
 int ICP_QAT_FW_LA_RET_AUTH_SET (int ,int ) ;
 int ICP_QAT_FW_SLICE_AUTH ;
 int ICP_QAT_FW_SLICE_CIPHER ;
 int ICP_QAT_FW_SLICE_DRAM_WR ;



 int ICP_QAT_HW_AUTH_CONFIG_BUILD (int ,int,unsigned int) ;
 int ICP_QAT_HW_AUTH_MODE1 ;
 int ICP_QAT_HW_SHA1_STATE1_SZ ;
 int ICP_QAT_HW_SHA1_STATE2_SZ ;
 int ICP_QAT_HW_SHA256_STATE1_SZ ;
 int ICP_QAT_HW_SHA256_STATE2_SZ ;
 int ICP_QAT_HW_SHA512_STATE1_SZ ;
 int ICP_QAT_HW_SHA512_STATE2_SZ ;
 int QAT_AES_HW_CONFIG_ENC (int,int) ;
 int cpu_to_be32 (int ) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct qat_alg_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_shash_blocksize (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ qat_alg_do_precomputes (struct icp_qat_hw_auth_algo_blk*,struct qat_alg_aead_ctx*,int ,int ) ;
 int qat_alg_init_common_hdr (struct icp_qat_fw_comn_req_hdr*,int) ;
 int round_up (int,int) ;

__attribute__((used)) static int qat_alg_aead_init_enc_session(struct crypto_aead *aead_tfm,
      int alg,
      struct crypto_authenc_keys *keys,
      int mode)
{
 struct qat_alg_aead_ctx *ctx = crypto_aead_ctx(aead_tfm);
 unsigned int digestsize = crypto_aead_authsize(aead_tfm);
 struct qat_enc *enc_ctx = &ctx->enc_cd->qat_enc_cd;
 struct icp_qat_hw_cipher_algo_blk *cipher = &enc_ctx->cipher;
 struct icp_qat_hw_auth_algo_blk *hash =
  (struct icp_qat_hw_auth_algo_blk *)((char *)enc_ctx +
  sizeof(struct icp_qat_hw_auth_setup) + keys->enckeylen);
 struct icp_qat_fw_la_bulk_req *req_tmpl = &ctx->enc_fw_req;
 struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req_tmpl->cd_pars;
 struct icp_qat_fw_comn_req_hdr *header = &req_tmpl->comn_hdr;
 void *ptr = &req_tmpl->cd_ctrl;
 struct icp_qat_fw_cipher_cd_ctrl_hdr *cipher_cd_ctrl = ptr;
 struct icp_qat_fw_auth_cd_ctrl_hdr *hash_cd_ctrl = ptr;


 cipher->aes.cipher_config.val = QAT_AES_HW_CONFIG_ENC(alg, mode);
 memcpy(cipher->aes.key, keys->enckey, keys->enckeylen);
 hash->sha.inner_setup.auth_config.config =
  ICP_QAT_HW_AUTH_CONFIG_BUILD(ICP_QAT_HW_AUTH_MODE1,
          ctx->qat_hash_alg, digestsize);
 hash->sha.inner_setup.auth_counter.counter =
  cpu_to_be32(crypto_shash_blocksize(ctx->hash_tfm));

 if (qat_alg_do_precomputes(hash, ctx, keys->authkey, keys->authkeylen))
  return -EFAULT;


 qat_alg_init_common_hdr(header, 1);
 header->service_cmd_id = ICP_QAT_FW_LA_CMD_CIPHER_HASH;
 ICP_QAT_FW_LA_DIGEST_IN_BUFFER_SET(header->serv_specif_flags,
        ICP_QAT_FW_LA_DIGEST_IN_BUFFER);
 ICP_QAT_FW_LA_RET_AUTH_SET(header->serv_specif_flags,
       ICP_QAT_FW_LA_RET_AUTH_RES);
 ICP_QAT_FW_LA_CMP_AUTH_SET(header->serv_specif_flags,
       ICP_QAT_FW_LA_NO_CMP_AUTH_RES);
 cd_pars->u.s.content_desc_addr = ctx->enc_cd_paddr;
 cd_pars->u.s.content_desc_params_sz = sizeof(struct qat_alg_cd) >> 3;


 cipher_cd_ctrl->cipher_key_sz = keys->enckeylen >> 3;
 cipher_cd_ctrl->cipher_state_sz = AES_BLOCK_SIZE >> 3;
 cipher_cd_ctrl->cipher_cfg_offset = 0;
 ICP_QAT_FW_COMN_CURR_ID_SET(cipher_cd_ctrl, ICP_QAT_FW_SLICE_CIPHER);
 ICP_QAT_FW_COMN_NEXT_ID_SET(cipher_cd_ctrl, ICP_QAT_FW_SLICE_AUTH);

 hash_cd_ctrl->hash_cfg_offset = ((char *)hash - (char *)cipher) >> 3;
 hash_cd_ctrl->hash_flags = ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED;
 hash_cd_ctrl->inner_res_sz = digestsize;
 hash_cd_ctrl->final_sz = digestsize;

 switch (ctx->qat_hash_alg) {
 case 130:
  hash_cd_ctrl->inner_state1_sz =
   round_up(ICP_QAT_HW_SHA1_STATE1_SZ, 8);
  hash_cd_ctrl->inner_state2_sz =
   round_up(ICP_QAT_HW_SHA1_STATE2_SZ, 8);
  break;
 case 129:
  hash_cd_ctrl->inner_state1_sz = ICP_QAT_HW_SHA256_STATE1_SZ;
  hash_cd_ctrl->inner_state2_sz = ICP_QAT_HW_SHA256_STATE2_SZ;
  break;
 case 128:
  hash_cd_ctrl->inner_state1_sz = ICP_QAT_HW_SHA512_STATE1_SZ;
  hash_cd_ctrl->inner_state2_sz = ICP_QAT_HW_SHA512_STATE2_SZ;
  break;
 default:
  break;
 }
 hash_cd_ctrl->inner_state2_offset = hash_cd_ctrl->hash_cfg_offset +
   ((sizeof(struct icp_qat_hw_auth_setup) +
    round_up(hash_cd_ctrl->inner_state1_sz, 8)) >> 3);
 ICP_QAT_FW_COMN_CURR_ID_SET(hash_cd_ctrl, ICP_QAT_FW_SLICE_AUTH);
 ICP_QAT_FW_COMN_NEXT_ID_SET(hash_cd_ctrl, ICP_QAT_FW_SLICE_DRAM_WR);
 return 0;
}
