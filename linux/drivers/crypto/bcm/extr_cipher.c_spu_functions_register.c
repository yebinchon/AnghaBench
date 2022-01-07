
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_hw {int spu_wordalign_padlen; int spu_ccm_update_iv; int spu_xts_tweak_in_payload; int spu_status_process; int spu_rx_status_len; int spu_tx_status_len; int spu_request_pad; int spu_cipher_req_finish; int spu_cipher_req_init; int spu_create_request; int spu_digest_size; int spu_hash_type; int spu_aead_ivlen; int spu_assoc_resp_len; int spu_gcm_ccm_pad_len; int spu_hash_pad_len; int spu_response_hdr_len; int spu_payload_length; int spu_ctx_max_payload; int spu_dump_msg_hdr; } ;
struct device {int dummy; } ;
typedef enum spu_spu_type { ____Placeholder_spu_spu_type } spu_spu_type ;
typedef enum spu_spu_subtype { ____Placeholder_spu_spu_subtype } spu_spu_subtype ;
struct TYPE_2__ {struct spu_hw spu; } ;


 int SPU_SUBTYPE_SPUM_NS2 ;
 int SPU_TYPE_SPUM ;
 int dev_dbg (struct device*,char*) ;
 TYPE_1__ iproc_priv ;
 int spu2_aead_ivlen ;
 int spu2_assoc_resp_len ;
 int spu2_ccm_update_iv ;
 int spu2_cipher_req_finish ;
 int spu2_cipher_req_init ;
 int spu2_create_request ;
 int spu2_ctx_max_payload ;
 int spu2_digest_size ;
 int spu2_dump_msg_hdr ;
 int spu2_gcm_ccm_pad_len ;
 int spu2_hash_pad_len ;
 int spu2_hash_type ;
 int spu2_payload_length ;
 int spu2_request_pad ;
 int spu2_response_hdr_len ;
 int spu2_rx_status_len ;
 int spu2_status_process ;
 int spu2_tx_status_len ;
 int spu2_wordalign_padlen ;
 int spu2_xts_tweak_in_payload ;
 int spum_aead_ivlen ;
 int spum_assoc_resp_len ;
 int spum_ccm_update_iv ;
 int spum_cipher_req_finish ;
 int spum_cipher_req_init ;
 int spum_create_request ;
 int spum_digest_size ;
 int spum_dump_msg_hdr ;
 int spum_gcm_ccm_pad_len ;
 int spum_hash_pad_len ;
 int spum_hash_type ;
 int spum_ns2_ctx_max_payload ;
 int spum_nsp_ctx_max_payload ;
 int spum_payload_length ;
 int spum_request_pad ;
 int spum_response_hdr_len ;
 int spum_rx_status_len ;
 int spum_status_process ;
 int spum_tx_status_len ;
 int spum_wordalign_padlen ;
 int spum_xts_tweak_in_payload ;

__attribute__((used)) static void spu_functions_register(struct device *dev,
       enum spu_spu_type spu_type,
       enum spu_spu_subtype spu_subtype)
{
 struct spu_hw *spu = &iproc_priv.spu;

 if (spu_type == SPU_TYPE_SPUM) {
  dev_dbg(dev, "Registering SPUM functions");
  spu->spu_dump_msg_hdr = spum_dump_msg_hdr;
  spu->spu_payload_length = spum_payload_length;
  spu->spu_response_hdr_len = spum_response_hdr_len;
  spu->spu_hash_pad_len = spum_hash_pad_len;
  spu->spu_gcm_ccm_pad_len = spum_gcm_ccm_pad_len;
  spu->spu_assoc_resp_len = spum_assoc_resp_len;
  spu->spu_aead_ivlen = spum_aead_ivlen;
  spu->spu_hash_type = spum_hash_type;
  spu->spu_digest_size = spum_digest_size;
  spu->spu_create_request = spum_create_request;
  spu->spu_cipher_req_init = spum_cipher_req_init;
  spu->spu_cipher_req_finish = spum_cipher_req_finish;
  spu->spu_request_pad = spum_request_pad;
  spu->spu_tx_status_len = spum_tx_status_len;
  spu->spu_rx_status_len = spum_rx_status_len;
  spu->spu_status_process = spum_status_process;
  spu->spu_xts_tweak_in_payload = spum_xts_tweak_in_payload;
  spu->spu_ccm_update_iv = spum_ccm_update_iv;
  spu->spu_wordalign_padlen = spum_wordalign_padlen;
  if (spu_subtype == SPU_SUBTYPE_SPUM_NS2)
   spu->spu_ctx_max_payload = spum_ns2_ctx_max_payload;
  else
   spu->spu_ctx_max_payload = spum_nsp_ctx_max_payload;
 } else {
  dev_dbg(dev, "Registering SPU2 functions");
  spu->spu_dump_msg_hdr = spu2_dump_msg_hdr;
  spu->spu_ctx_max_payload = spu2_ctx_max_payload;
  spu->spu_payload_length = spu2_payload_length;
  spu->spu_response_hdr_len = spu2_response_hdr_len;
  spu->spu_hash_pad_len = spu2_hash_pad_len;
  spu->spu_gcm_ccm_pad_len = spu2_gcm_ccm_pad_len;
  spu->spu_assoc_resp_len = spu2_assoc_resp_len;
  spu->spu_aead_ivlen = spu2_aead_ivlen;
  spu->spu_hash_type = spu2_hash_type;
  spu->spu_digest_size = spu2_digest_size;
  spu->spu_create_request = spu2_create_request;
  spu->spu_cipher_req_init = spu2_cipher_req_init;
  spu->spu_cipher_req_finish = spu2_cipher_req_finish;
  spu->spu_request_pad = spu2_request_pad;
  spu->spu_tx_status_len = spu2_tx_status_len;
  spu->spu_rx_status_len = spu2_rx_status_len;
  spu->spu_status_process = spu2_status_process;
  spu->spu_xts_tweak_in_payload = spu2_xts_tweak_in_payload;
  spu->spu_ccm_update_iv = spu2_ccm_update_iv;
  spu->spu_wordalign_padlen = spu2_wordalign_padlen;
 }
}
