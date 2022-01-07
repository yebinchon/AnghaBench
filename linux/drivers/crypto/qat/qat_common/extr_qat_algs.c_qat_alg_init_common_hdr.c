
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_comn_req_hdr {int serv_specif_flags; int comn_req_flags; int service_type; int hdr_flags; } ;


 int ICP_QAT_FW_COMN_FLAGS_BUILD (int ,int ) ;
 int ICP_QAT_FW_COMN_HDR_FLAGS_BUILD (int ) ;
 int ICP_QAT_FW_COMN_REQ_CPM_FW_LA ;
 int ICP_QAT_FW_COMN_REQ_FLAG_SET ;
 int ICP_QAT_FW_LA_NO_PROTO ;
 int ICP_QAT_FW_LA_PARTIAL_NONE ;
 int ICP_QAT_FW_LA_PARTIAL_SET (int ,int ) ;
 int ICP_QAT_FW_LA_PROTO_SET (int ,int ) ;
 int QAT_COMN_CD_FLD_TYPE_64BIT_ADR ;
 int QAT_COMN_PTR_TYPE_SGL ;
 int qat_alg_init_hdr_iv_updt (struct icp_qat_fw_comn_req_hdr*) ;
 int qat_alg_init_hdr_no_iv_updt (struct icp_qat_fw_comn_req_hdr*) ;

__attribute__((used)) static void qat_alg_init_common_hdr(struct icp_qat_fw_comn_req_hdr *header,
        int aead)
{
 header->hdr_flags =
  ICP_QAT_FW_COMN_HDR_FLAGS_BUILD(ICP_QAT_FW_COMN_REQ_FLAG_SET);
 header->service_type = ICP_QAT_FW_COMN_REQ_CPM_FW_LA;
 header->comn_req_flags =
  ICP_QAT_FW_COMN_FLAGS_BUILD(QAT_COMN_CD_FLD_TYPE_64BIT_ADR,
         QAT_COMN_PTR_TYPE_SGL);
 ICP_QAT_FW_LA_PARTIAL_SET(header->serv_specif_flags,
      ICP_QAT_FW_LA_PARTIAL_NONE);
 if (aead)
  qat_alg_init_hdr_no_iv_updt(header);
 else
  qat_alg_init_hdr_iv_updt(header);
 ICP_QAT_FW_LA_PROTO_SET(header->serv_specif_flags,
    ICP_QAT_FW_LA_NO_PROTO);
}
