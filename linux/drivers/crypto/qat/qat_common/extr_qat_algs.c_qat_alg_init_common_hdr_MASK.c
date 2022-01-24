#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct icp_qat_fw_comn_req_hdr {int /*<<< orphan*/  serv_specif_flags; int /*<<< orphan*/  comn_req_flags; int /*<<< orphan*/  service_type; int /*<<< orphan*/  hdr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICP_QAT_FW_COMN_REQ_CPM_FW_LA ; 
 int /*<<< orphan*/  ICP_QAT_FW_COMN_REQ_FLAG_SET ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_NO_PROTO ; 
 int /*<<< orphan*/  ICP_QAT_FW_LA_PARTIAL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QAT_COMN_CD_FLD_TYPE_64BIT_ADR ; 
 int /*<<< orphan*/  QAT_COMN_PTR_TYPE_SGL ; 
 int /*<<< orphan*/  FUNC4 (struct icp_qat_fw_comn_req_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct icp_qat_fw_comn_req_hdr*) ; 

__attribute__((used)) static void FUNC6(struct icp_qat_fw_comn_req_hdr *header,
				    int aead)
{
	header->hdr_flags =
		FUNC1(ICP_QAT_FW_COMN_REQ_FLAG_SET);
	header->service_type = ICP_QAT_FW_COMN_REQ_CPM_FW_LA;
	header->comn_req_flags =
		FUNC0(QAT_COMN_CD_FLD_TYPE_64BIT_ADR,
					    QAT_COMN_PTR_TYPE_SGL);
	FUNC2(header->serv_specif_flags,
				  ICP_QAT_FW_LA_PARTIAL_NONE);
	if (aead)
		FUNC5(header);
	else
		FUNC4(header);
	FUNC3(header->serv_specif_flags,
				ICP_QAT_FW_LA_NO_PROTO);
}