
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct qat_crypto_request {struct aead_request* aead_req; struct qat_alg_aead_ctx* aead_ctx; } ;
struct qat_crypto_instance {int dummy; } ;
struct qat_alg_aead_ctx {struct qat_crypto_instance* inst; } ;
struct TYPE_3__ {int comn_status; } ;
struct icp_qat_fw_la_resp {TYPE_1__ comn_resp; } ;
struct TYPE_4__ {int (* complete ) (TYPE_2__*,int) ;} ;
struct aead_request {TYPE_2__ base; } ;


 int EBADMSG ;
 int ICP_QAT_FW_COMN_RESP_CRYPTO_STAT_GET (int ) ;
 int ICP_QAT_FW_COMN_STATUS_FLAG_OK ;
 int qat_alg_free_bufl (struct qat_crypto_instance*,struct qat_crypto_request*) ;
 int stub1 (TYPE_2__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qat_aead_alg_callback(struct icp_qat_fw_la_resp *qat_resp,
      struct qat_crypto_request *qat_req)
{
 struct qat_alg_aead_ctx *ctx = qat_req->aead_ctx;
 struct qat_crypto_instance *inst = ctx->inst;
 struct aead_request *areq = qat_req->aead_req;
 uint8_t stat_filed = qat_resp->comn_resp.comn_status;
 int res = 0, qat_res = ICP_QAT_FW_COMN_RESP_CRYPTO_STAT_GET(stat_filed);

 qat_alg_free_bufl(inst, qat_req);
 if (unlikely(qat_res != ICP_QAT_FW_COMN_STATUS_FLAG_OK))
  res = -EBADMSG;
 areq->base.complete(&areq->base, res);
}
