#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  counter; } ;
struct TYPE_13__ {int /*<<< orphan*/  config; } ;
struct TYPE_15__ {TYPE_5__ auth_counter; TYPE_4__ auth_config; } ;
struct TYPE_16__ {TYPE_6__ inner_setup; } ;
struct icp_qat_hw_auth_algo_blk {TYPE_7__ sha; } ;
struct qat_dec {struct icp_qat_hw_auth_algo_blk hash; } ;
struct qat_alg_cd {int dummy; } ;
struct icp_qat_fw_comn_req_hdr {int /*<<< orphan*/  serv_specif_flags; int /*<<< orphan*/  service_cmd_id; } ;
struct TYPE_17__ {int content_desc_params_sz; int /*<<< orphan*/  content_desc_addr; } ;
struct TYPE_18__ {TYPE_8__ s; } ;
struct icp_qat_fw_comn_req_hdr_cd_pars {TYPE_9__ u; } ;
struct icp_qat_fw_la_bulk_req {int /*<<< orphan*/  serv_specif_rqpars; int /*<<< orphan*/  cd_ctrl; struct icp_qat_fw_comn_req_hdr comn_hdr; struct icp_qat_fw_comn_req_hdr_cd_pars cd_pars; } ;
struct qat_alg_aead_ctx {int qat_hash_alg; int /*<<< orphan*/  hash_tfm; int /*<<< orphan*/  dec_cd_paddr; struct icp_qat_fw_la_bulk_req dec_fw_req; TYPE_1__* dec_cd; } ;
struct TYPE_11__ {int /*<<< orphan*/  val; } ;
struct TYPE_12__ {int /*<<< orphan*/  key; TYPE_2__ cipher_config; } ;
struct icp_qat_hw_cipher_algo_blk {TYPE_3__ aes; } ;
struct icp_qat_hw_auth_setup {int dummy; } ;
struct icp_qat_fw_la_cipher_req_params {int dummy; } ;
struct icp_qat_fw_la_auth_req_params {unsigned int auth_res_sz; } ;
struct icp_qat_fw_cipher_cd_ctrl_hdr {int cipher_key_sz; int cipher_state_sz; int cipher_cfg_offset; unsigned int inner_res_sz; unsigned int final_sz; int inner_state1_sz; int inner_state2_sz; scalar_t__ hash_cfg_offset; scalar_t__ inner_state2_offset; int /*<<< orphan*/  hash_flags; } ;
struct icp_qat_fw_auth_cd_ctrl_hdr {int cipher_key_sz; int cipher_state_sz; int cipher_cfg_offset; unsigned int inner_res_sz; unsigned int final_sz; int inner_state1_sz; int inner_state2_sz; scalar_t__ hash_cfg_offset; scalar_t__ inner_state2_offset; int /*<<< orphan*/  hash_flags; } ;
struct crypto_authenc_keys {int enckeylen; int /*<<< orphan*/  authkeylen; int /*<<< orphan*/  authkey; int /*<<< orphan*/  enckey; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_10__ {struct qat_dec qat_dec_cd; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int EFAULT ; 
 int /*<<< orphan*/  ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct icp_qat_fw_cipher_cd_ctrl_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_cipher_cd_ctrl_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_CMD_HASH_CIPHER ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_CMP_AUTH_RES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_DIGEST_IN_BUFFER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_NO_RET_AUTH_RES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICP_QAT_FW_SLICE_AUTH ; 
 int /*<<< orphan*/  ICP_QAT_FW_SLICE_CIPHER ; 
 int /*<<< orphan*/  ICP_QAT_FW_SLICE_DRAM_WR ; 
#define  ICP_QAT_HW_AUTH_ALGO_SHA1 130 
#define  ICP_QAT_HW_AUTH_ALGO_SHA256 129 
#define  ICP_QAT_HW_AUTH_ALGO_SHA512 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  ICP_QAT_HW_AUTH_MODE1 ; 
 int ICP_QAT_HW_SHA1_STATE1_SZ ; 
 int ICP_QAT_HW_SHA1_STATE2_SZ ; 
 int ICP_QAT_HW_SHA256_STATE1_SZ ; 
 int ICP_QAT_HW_SHA256_STATE2_SZ ; 
 int ICP_QAT_HW_SHA512_STATE1_SZ ; 
 int ICP_QAT_HW_SHA512_STATE2_SZ ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct crypto_aead*) ; 
 struct qat_alg_aead_ctx* FUNC9 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct icp_qat_hw_auth_algo_blk*,struct qat_alg_aead_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct icp_qat_fw_comn_req_hdr*,int) ; 
 int FUNC15 (int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct crypto_aead *aead_tfm,
					 int alg,
					 struct crypto_authenc_keys *keys,
					 int mode)
{
	struct qat_alg_aead_ctx *ctx = FUNC9(aead_tfm);
	unsigned int digestsize = FUNC8(aead_tfm);
	struct qat_dec *dec_ctx = &ctx->dec_cd->qat_dec_cd;
	struct icp_qat_hw_auth_algo_blk *hash = &dec_ctx->hash;
	struct icp_qat_hw_cipher_algo_blk *cipher =
		(struct icp_qat_hw_cipher_algo_blk *)((char *)dec_ctx +
		sizeof(struct icp_qat_hw_auth_setup) +
		FUNC16(FUNC11(ctx->hash_tfm), 8) * 2);
	struct icp_qat_fw_la_bulk_req *req_tmpl = &ctx->dec_fw_req;
	struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req_tmpl->cd_pars;
	struct icp_qat_fw_comn_req_hdr *header = &req_tmpl->comn_hdr;
	void *ptr = &req_tmpl->cd_ctrl;
	struct icp_qat_fw_cipher_cd_ctrl_hdr *cipher_cd_ctrl = ptr;
	struct icp_qat_fw_auth_cd_ctrl_hdr *hash_cd_ctrl = ptr;
	struct icp_qat_fw_la_auth_req_params *auth_param =
		(struct icp_qat_fw_la_auth_req_params *)
		((char *)&req_tmpl->serv_specif_rqpars +
		sizeof(struct icp_qat_fw_la_cipher_req_params));

	/* CD setup */
	cipher->aes.cipher_config.val = FUNC6(alg, mode);
	FUNC12(cipher->aes.key, keys->enckey, keys->enckeylen);
	hash->sha.inner_setup.auth_config.config =
		FUNC5(ICP_QAT_HW_AUTH_MODE1,
					     ctx->qat_hash_alg,
					     digestsize);
	hash->sha.inner_setup.auth_counter.counter =
		FUNC7(FUNC10(ctx->hash_tfm));

	if (FUNC13(hash, ctx, keys->authkey, keys->authkeylen))
		return -EFAULT;

	/* Request setup */
	FUNC14(header, 1);
	header->service_cmd_id = ICP_QAT_FW_LA_CMD_HASH_CIPHER;
	FUNC3(header->serv_specif_flags,
					   ICP_QAT_FW_LA_DIGEST_IN_BUFFER);
	FUNC4(header->serv_specif_flags,
				   ICP_QAT_FW_LA_NO_RET_AUTH_RES);
	FUNC2(header->serv_specif_flags,
				   ICP_QAT_FW_LA_CMP_AUTH_RES);
	cd_pars->u.s.content_desc_addr = ctx->dec_cd_paddr;
	cd_pars->u.s.content_desc_params_sz = sizeof(struct qat_alg_cd) >> 3;

	/* Cipher CD config setup */
	cipher_cd_ctrl->cipher_key_sz = keys->enckeylen >> 3;
	cipher_cd_ctrl->cipher_state_sz = AES_BLOCK_SIZE >> 3;
	cipher_cd_ctrl->cipher_cfg_offset =
		(sizeof(struct icp_qat_hw_auth_setup) +
		 FUNC16(FUNC11(ctx->hash_tfm), 8) * 2) >> 3;
	FUNC0(cipher_cd_ctrl, ICP_QAT_FW_SLICE_CIPHER);
	FUNC1(cipher_cd_ctrl, ICP_QAT_FW_SLICE_DRAM_WR);

	/* Auth CD config setup */
	hash_cd_ctrl->hash_cfg_offset = 0;
	hash_cd_ctrl->hash_flags = ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED;
	hash_cd_ctrl->inner_res_sz = digestsize;
	hash_cd_ctrl->final_sz = digestsize;

	switch (ctx->qat_hash_alg) {
	case ICP_QAT_HW_AUTH_ALGO_SHA1:
		hash_cd_ctrl->inner_state1_sz =
			FUNC15(ICP_QAT_HW_SHA1_STATE1_SZ, 8);
		hash_cd_ctrl->inner_state2_sz =
			FUNC15(ICP_QAT_HW_SHA1_STATE2_SZ, 8);
		break;
	case ICP_QAT_HW_AUTH_ALGO_SHA256:
		hash_cd_ctrl->inner_state1_sz = ICP_QAT_HW_SHA256_STATE1_SZ;
		hash_cd_ctrl->inner_state2_sz = ICP_QAT_HW_SHA256_STATE2_SZ;
		break;
	case ICP_QAT_HW_AUTH_ALGO_SHA512:
		hash_cd_ctrl->inner_state1_sz = ICP_QAT_HW_SHA512_STATE1_SZ;
		hash_cd_ctrl->inner_state2_sz = ICP_QAT_HW_SHA512_STATE2_SZ;
		break;
	default:
		break;
	}

	hash_cd_ctrl->inner_state2_offset = hash_cd_ctrl->hash_cfg_offset +
			((sizeof(struct icp_qat_hw_auth_setup) +
			 FUNC15(hash_cd_ctrl->inner_state1_sz, 8)) >> 3);
	auth_param->auth_res_sz = digestsize;
	FUNC0(hash_cd_ctrl, ICP_QAT_FW_SLICE_AUTH);
	FUNC1(hash_cd_ctrl, ICP_QAT_FW_SLICE_CIPHER);
	return 0;
}