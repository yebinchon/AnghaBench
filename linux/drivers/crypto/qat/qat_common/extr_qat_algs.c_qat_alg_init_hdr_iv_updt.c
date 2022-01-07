
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_comn_req_hdr {int serv_specif_flags; } ;


 int ICP_QAT_FW_CIPH_IV_64BIT_PTR ;
 int ICP_QAT_FW_LA_CIPH_IV_FLD_FLAG_SET (int ,int ) ;
 int ICP_QAT_FW_LA_UPDATE_STATE ;
 int ICP_QAT_FW_LA_UPDATE_STATE_SET (int ,int ) ;

__attribute__((used)) static void qat_alg_init_hdr_iv_updt(struct icp_qat_fw_comn_req_hdr *header)
{
 ICP_QAT_FW_LA_CIPH_IV_FLD_FLAG_SET(header->serv_specif_flags,
        ICP_QAT_FW_CIPH_IV_64BIT_PTR);
 ICP_QAT_FW_LA_UPDATE_STATE_SET(header->serv_specif_flags,
           ICP_QAT_FW_LA_UPDATE_STATE);
}
