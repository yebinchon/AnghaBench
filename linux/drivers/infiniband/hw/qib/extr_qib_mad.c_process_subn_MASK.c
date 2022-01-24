#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct qib_pportdata {TYPE_3__* dd; } ;
struct TYPE_5__ {int port_cap_flags; } ;
struct qib_ibport {TYPE_2__ rvp; } ;
struct ib_smp {int class_version; int method; int /*<<< orphan*/  status; int /*<<< orphan*/ * data; int /*<<< orphan*/  attr_id; int /*<<< orphan*/  attr_mod; } ;
struct TYPE_4__ {scalar_t__ attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {scalar_t__ phys_port_cnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* f_set_ib_cfg ) (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_FAILURE ; 
 int IB_MAD_RESULT_SUCCESS ; 
#define  IB_MGMT_METHOD_GET 143 
#define  IB_MGMT_METHOD_GET_RESP 142 
#define  IB_MGMT_METHOD_REPORT 141 
#define  IB_MGMT_METHOD_REPORT_RESP 140 
#define  IB_MGMT_METHOD_SEND 139 
#define  IB_MGMT_METHOD_SET 138 
#define  IB_MGMT_METHOD_TRAP 137 
#define  IB_MGMT_METHOD_TRAP_REPRESS 136 
 int IB_PORT_SM ; 
 int IB_PORT_SM_DISABLED ; 
#define  IB_SMP_ATTR_GUID_INFO 135 
#define  IB_SMP_ATTR_NODE_DESC 134 
#define  IB_SMP_ATTR_NODE_INFO 133 
 int /*<<< orphan*/  IB_SMP_ATTR_NOTICE ; 
#define  IB_SMP_ATTR_PKEY_TABLE 132 
#define  IB_SMP_ATTR_PORT_INFO 131 
#define  IB_SMP_ATTR_SL_TO_VL_TABLE 130 
#define  IB_SMP_ATTR_SM_INFO 129 
#define  IB_SMP_ATTR_VL_ARB_TABLE 128 
 int /*<<< orphan*/  IB_SMP_UNSUP_METHOD ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_METH_ATTR ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_VERSION ; 
 int /*<<< orphan*/  QIB_IB_CFG_PORT ; 
 int /*<<< orphan*/  QIB_VENDOR_IPG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qib_ibport*,struct ib_smp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_smp*) ; 
 struct qib_pportdata* FUNC3 (struct qib_ibport*) ; 
 int FUNC4 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC7 (struct ib_smp*,struct ib_device*) ; 
 int FUNC8 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC9 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC10 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC11 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC12 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC13 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC14 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC15 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC16 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC17 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 int FUNC18 (struct ib_smp*,struct ib_device*,scalar_t__) ; 
 struct qib_ibport* FUNC19 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC20(struct ib_device *ibdev, int mad_flags,
			u8 port, const struct ib_mad *in_mad,
			struct ib_mad *out_mad)
{
	struct ib_smp *smp = (struct ib_smp *)out_mad;
	struct qib_ibport *ibp = FUNC19(ibdev, port);
	struct qib_pportdata *ppd = FUNC3(ibp);
	int ret;

	*out_mad = *in_mad;
	if (smp->class_version != 1) {
		smp->status |= IB_SMP_UNSUP_VERSION;
		ret = FUNC4(smp);
		goto bail;
	}

	ret = FUNC1(ibp, smp, mad_flags);
	if (ret) {
		u32 port_num = FUNC0(smp->attr_mod);

		/*
		 * If this is a get/set portinfo, we already check the
		 * M_Key if the MAD is for another port and the M_Key
		 * is OK on the receiving port. This check is needed
		 * to increment the error counters when the M_Key
		 * fails to match on *both* ports.
		 */
		if (in_mad->mad_hdr.attr_id == IB_SMP_ATTR_PORT_INFO &&
		    (smp->method == IB_MGMT_METHOD_GET ||
		     smp->method == IB_MGMT_METHOD_SET) &&
		    port_num && port_num <= ibdev->phys_port_cnt &&
		    port != port_num)
			(void) FUNC1(FUNC19(ibdev, port_num), smp, 0);
		ret = IB_MAD_RESULT_FAILURE;
		goto bail;
	}

	switch (smp->method) {
	case IB_MGMT_METHOD_GET:
		switch (smp->attr_id) {
		case IB_SMP_ATTR_NODE_DESC:
			ret = FUNC7(smp, ibdev);
			goto bail;
		case IB_SMP_ATTR_NODE_INFO:
			ret = FUNC8(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_GUID_INFO:
			ret = FUNC6(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_PORT_INFO:
			ret = FUNC10(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_PKEY_TABLE:
			ret = FUNC9(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_SL_TO_VL_TABLE:
			ret = FUNC11(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_VL_ARB_TABLE:
			ret = FUNC12(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_SM_INFO:
			if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED) {
				ret = IB_MAD_RESULT_SUCCESS |
					IB_MAD_RESULT_CONSUMED;
				goto bail;
			}
			if (ibp->rvp.port_cap_flags & IB_PORT_SM) {
				ret = IB_MAD_RESULT_SUCCESS;
				goto bail;
			}
			/* FALLTHROUGH */
		default:
			smp->status |= IB_SMP_UNSUP_METH_ATTR;
			ret = FUNC4(smp);
			goto bail;
		}

	case IB_MGMT_METHOD_SET:
		switch (smp->attr_id) {
		case IB_SMP_ATTR_GUID_INFO:
			ret = FUNC13(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_PORT_INFO:
			ret = FUNC15(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_PKEY_TABLE:
			ret = FUNC14(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_SL_TO_VL_TABLE:
			ret = FUNC16(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_VL_ARB_TABLE:
			ret = FUNC17(smp, ibdev, port);
			goto bail;
		case IB_SMP_ATTR_SM_INFO:
			if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED) {
				ret = IB_MAD_RESULT_SUCCESS |
					IB_MAD_RESULT_CONSUMED;
				goto bail;
			}
			if (ibp->rvp.port_cap_flags & IB_PORT_SM) {
				ret = IB_MAD_RESULT_SUCCESS;
				goto bail;
			}
			/* FALLTHROUGH */
		default:
			smp->status |= IB_SMP_UNSUP_METH_ATTR;
			ret = FUNC4(smp);
			goto bail;
		}

	case IB_MGMT_METHOD_TRAP_REPRESS:
		if (smp->attr_id == IB_SMP_ATTR_NOTICE)
			ret = FUNC18(smp, ibdev, port);
		else {
			smp->status |= IB_SMP_UNSUP_METH_ATTR;
			ret = FUNC4(smp);
		}
		goto bail;

	case IB_MGMT_METHOD_TRAP:
	case IB_MGMT_METHOD_REPORT:
	case IB_MGMT_METHOD_REPORT_RESP:
	case IB_MGMT_METHOD_GET_RESP:
		/*
		 * The ib_mad module will call us to process responses
		 * before checking for other consumers.
		 * Just tell the caller to process it normally.
		 */
		ret = IB_MAD_RESULT_SUCCESS;
		goto bail;

	case IB_MGMT_METHOD_SEND:
		if (FUNC2(smp) &&
		    smp->attr_id == QIB_VENDOR_IPG) {
			ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PORT,
					      smp->data[0]);
			ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
		} else
			ret = IB_MAD_RESULT_SUCCESS;
		goto bail;

	default:
		smp->status |= IB_SMP_UNSUP_METHOD;
		ret = FUNC4(smp);
	}

bail:
	return ret;
}